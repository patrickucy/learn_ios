//
//  TRViewController.m
//  Demo47_MusicPlayerWithAsynchronousDownload
//
//  Created by Yu on 9/5/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()
@property (weak, nonatomic) IBOutlet UIProgressView *downloadProgressView;
@property (nonatomic) int musicFullLength;
@property (nonatomic) int musicLength;
@property (nonatomic,strong) NSMutableData *musicData;
@property (nonatomic,strong) AVAudioPlayer *audioPlayer;

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	self.musicData = [NSMutableData data];
	//这里的url是demo46解析出来的那个url,汪峰的怒放的生命
	NSURL *musicURL = [NSURL URLWithString:@"http://zhangmenshiting.baidu.com/data2/music/69553401/Z2toaWhqZ2lfn6NndK6ap5WXcGxma3Bpk2qZaJebnZxja2NlaGycamKWmGyYbmmeZGNpbWtunHFhlGhsaJxocZJnl1qin5t1YWBqbWZtaWpqY2drZWdncTE$69553401.mp3?xcode=81591b8f4befd290136e21de8c82f316968e90b583f19a5d&mid=0.79172291470109"];
	NSMutableURLRequest	*musicRequest = [NSMutableURLRequest requestWithURL:musicURL];
	NSURLConnection *urlConnection = [[NSURLConnection alloc] initWithRequest:musicRequest delegate:self];
	
	if (urlConnection) {
		NSLog(@"连接成功");
	}
}


-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
	//相应的头里面就有data的full length
	NSHTTPURLResponse *resp = (NSHTTPURLResponse *)response;
	//你会发现传出来的是json
	NSLog(@"%@",[resp allHeaderFields]);
	NSDictionary *responseHeaderFieldsDictionary = [resp allHeaderFields];
	self.musicFullLength = [[responseHeaderFieldsDictionary objectForKey:@"Content-Length"] intValue];

}

-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
//	NSLog(@"%d",data.length);
	self.musicLength = data.length +  self.musicLength;
	self.downloadProgressView.progress = self.musicLength / self.musicFullLength;
	
	
	//上面的确实现了下载的进度条,下面就来实现一边下载一边播放
	
	//每个文件都是有文件头的
	[self.musicData appendData:data];
	if (!self.audioPlayer && self.musicData.length > 100*1024) { //这里的100*1024是100k,这里的意思是,当数据下载到一定量的时候才开始播放,而不是一上来什么数据都没有就立刻播放
		self.audioPlayer = [[AVAudioPlayer alloc] initWithData:self.musicData error:nil];
		[self.audioPlayer play];
	}
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	
}

-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
	
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
