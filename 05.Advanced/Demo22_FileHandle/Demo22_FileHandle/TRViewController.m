//
//  TRViewController.m
//  Demo22_FileHandle
//
//  Created by Patrick Yu on 8/20/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()
@property (nonatomic,strong) NSMutableData *data;
@property (nonatomic,strong) NSFileHandle *readFileHandle;
@property (nonatomic,strong) UIImageView *imageView;
@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	self.data = [NSMutableData data];
	NSFileManager *fileManager = [NSFileManager defaultManager];
	//NSData表示二进制数据对象,是任何数据都可以保存.因为当你最终传数据(文本,音频,图片,视频,)都是二进制数据 namely:01010101010100
	//加载文件到内存当中
	NSData *data = [NSData dataWithContentsOfFile:@"/Users/patrickyu/Desktop/Screen Shot 2014-08-19 at 10.54.14 PM.png"];
	
	//把内存中的二进制数据保存到文件中
	[data writeToFile:@"/Users/patrickyu/Desktop/createdByIosSimulator.png" atomically:YES];
	
	//下面的 contents 的参数就是 NSData 类型,然而因为有上面这个方法写数据,一般情况下下面这个方法是用的比较少的
	[fileManager createFileAtPath:@"/Users/patrickyu/Desktop/createdByIosSimulator" contents:nil attributes:nil];
	
	//可以读取文件中的一部分数据,和往文件中写一部分数据,而上面是的是整个文件的来操作
	self.readFileHandle = [NSFileHandle fileHandleForReadingAtPath:@"/Users/patrickyu/Desktop/createdByIosSimulator.png"];
	
	//*****获取文件大小的方式*****
	
	//1.通过 NSData 对象(把数据加载到内存中)
//	NSData *imageData = [NSData dataWithContentsOfFile:@"/Users/patrickyu/Desktop/createdByIosSimulator.png" ];
//	NSLog(@"%d",imageData.length);
	
	//2.通过 fileHandle 获取文件的长度 (不把数据加载到内存中,用于文件大的时候)
	//以个数据文件就是10100101010101010101110100100010110010101101010100101010101010,然而 seek 是有个游标的,下面这个方法就是设置游标的位置,也就是读取文件的起始位置
//	NSData *subData = [readFileHandle readDataOfLength:100];
	
	// 下面这个方法一般是用于得到文件的长度,把游标放到文件最后
//	long long length = [self.readFileHandle seekToEndOfFile];
	//设置游标的位置,也就是读取文件的起始位置
//	[self.readFileHandle seekToFileOffset:0]; // 注意的是,文件是有文件头的,有各种关于文件的信息,所以一般读取文件是不会从数据的中间开始读取的
	
	self.imageView = [[UIImageView alloc] init];
	self.imageView.frame = self.view.bounds;
	[self.view addSubview:self.imageView];

	
	[NSTimer scheduledTimerWithTimeInterval:0.0001 target:self selector:@selector(loadData) userInfo:nil repeats:YES];
}

-(void)loadData
{
	NSData *subdata = [self.readFileHandle readDataOfLength:200];//指定长度的加载
	[self.data appendData:subdata];
	UIImage *image = [UIImage imageWithData:self.data];
	self.imageView.image = image;
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
