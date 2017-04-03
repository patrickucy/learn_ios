//
//  TRViewController.m
//  Demo46_MusicPlayerWithInternetDownload
//
//  Created by Yu on 9/5/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRMusic.h"
#import "TRMusicParser.h"
#import "TRLrcParser.h"

@interface TRViewController () <UITableViewDataSource,UITableViewDelegate,NSURLConnectionDataDelegate>

@property (weak, nonatomic) IBOutlet UITextField *songNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *singerNameTextField;
@property (weak, nonatomic) IBOutlet UITableView *lrcTableView;
@property (nonatomic,strong) NSDictionary *lrcDictionary;
@property (nonatomic,strong) AVAudioPlayer *audioPlayer;
@property (nonatomic,strong) NSMutableData *musicData;
@property (nonatomic,strong) NSArray *keys;
@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
		
}

- (IBAction)donwloadButtonAction:(UIButton *)sender
{
	//**********  get请求(百度音乐)  ********
	
	//百度音乐的API,你可以直接打进safari地址栏看看有没有东西
	//http://box.zhangmen.baidu.com/x?op=12&count=1&title=歌名$$歌手$$$$
	
	NSString *urlString = [NSString stringWithFormat:@"http://box.zhangmen.baidu.com/x?op=12&count=1&title=%@$$%@$$$$",self.songNameTextField.text,self.singerNameTextField.text];
	//进行URL编码(因为你的URL里面出现了中文,实际上后面的都一样)
	NSString *encodedURLString = [urlString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
	NSURL *url = [NSURL URLWithString:encodedURLString];
	NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
	
	NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
	
	NSLog(@"xml = %@",[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]);
	
	TRMusicParser *musicParser = [[TRMusicParser alloc] init];
	TRMusic  *music = [musicParser parseMusicInfoByXmlData:data];
	NSLog(@"%@--------%@",music.fullPath,music.lrcid);

	
	
	//**********  歌曲下载  ********
	
	NSURL *musicURL = [NSURL URLWithString:music.fullPath];
	NSMutableURLRequest	*musicRequest = [NSMutableURLRequest requestWithURL:musicURL];
	
	
	//这里发送的是同步请求,也就是说在没有结束的情况下,程序一直等在这里(感觉就像死机了,但实际上程序在背后还是运行着),只有当歌曲下载好了才会继续运行
//	NSData *musicData = [NSURLConnection sendSynchronousRequest:musicRequest returningResponse:nil error:nil];
//	[musicData writeToFile:@"/Users/patrickyu/Desktop/aaa.mp3" atomically:YES];
	
	
	NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:musicRequest delegate:self];
	
	
	
	
	//**********  歌词下载  ********
	NSLog(@"%@",music.lrcPath);
	//注意这里的enconde,因为lrc文件的数据不是utf-8编码的,所以要换成GB...编码的解码方式
	NSString *lrcString = [NSString stringWithContentsOfURL:[NSURL URLWithString:music.lrcPath] encoding:CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000) error:nil];
	NSLog(@"lrc == %@",lrcString);
	//***下面就是遍历歌词文档信息的具体算法
	self.lrcDictionary = [TRLrcParser parseLrc:lrcString];
	NSLog(@"%@",self.lrcDictionary);
	[self.lrcTableView reloadData];
}

#pragma mark - URL Connection
-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
	self.musicData = [NSMutableData data];
	
}

-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
	[self.musicData appendData:data];
	if (self.musicData.length > 100*1024  && !self.audioPlayer ) {
		self.audioPlayer = [[AVAudioPlayer alloc] initWithData:self.musicData error:nil];
		[self.audioPlayer play];
		[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateAction) userInfo:nil repeats:YES];
	}
}

-(void)updateAction
{
	NSArray *keys = [self.lrcDictionary.allKeys sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
		if ([obj1 floatValue] < [obj2 floatValue]) {
			return NSOrderedAscending;
		}return NSOrderedDescending;
	}];
	for (int i = 0; i<keys.count; i++) {
		NSNumber *key = keys[i];
		if ([key floatValue]> self.audioPlayer.currentTime) {
			[self.lrcTableView  selectRowAtIndexPath:[NSIndexPath indexPathForRow:i-1 inSection:0] animated:YES scrollPosition:UITableViewScrollPositionMiddle];
			break;
		}
	}
}


#pragma mark - Table View

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return  self.lrcDictionary.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
	NSArray *allKeys = self.lrcDictionary.allKeys;
	allKeys = [allKeys sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
		if ([obj1 floatValue] < [obj2 floatValue]) {
			return NSOrderedAscending;
		}else return NSOrderedDescending;
	}];
	NSNumber *key = allKeys[indexPath.row];
	NSString *lrcText = [self.lrcDictionary objectForKey:key];
	cell.textLabel.text = lrcText;
	return cell;
}

- (void)selectRowAtIndexPath:(NSIndexPath *)indexPath animated:(BOOL)animated scrollPosition:(UITableViewScrollPosition)scrollPosition
{
	//在这个方法里面可以实现音乐播放器随着歌词播放的位置滚动
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
