//
//  TRViewController.m
//  Demo23_FileHandle_Write
//
//  Created by Patrick Yu on 8/20/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()
@property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) NSFileHandle *readFileHandle;
@property (nonatomic,strong) NSFileHandle *writeFileHandle;
@property (nonatomic) long long fileLength;
@property (nonatomic,strong) NSMutableData *data;
@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	self.imageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
	//如果加了这行代码,你会发现,按钮被 view的背景颜色给挡住了,也就是说 storyboard 先执行,代码的内容后执行
	self.imageView.backgroundColor = [UIColor redColor];
	
	[self.view addSubview:self.imageView];
	[self.view insertSubview:self.imageView atIndex:0];//注意要先执行上面的代码才执行这行代码,要不然显示不出来
	self.data = [NSMutableData data];
	
	self.readFileHandle = [NSFileHandle fileHandleForReadingAtPath:@"/Users/patrickyu/Desktop/createdByIosSimulator.png"];
	self.fileLength = [self.readFileHandle seekToEndOfFile];
	[self.readFileHandle seekToFileOffset:0];//一定要有这个起始值
	NSString *toPath = @"/Users/patrickyu/Desktop/changedByIosSimulator.png";
	
	//fileHandle 写的时候,一定要保证文件存在.也即是要先创建才能写
	NSFileManager *fileManager = [NSFileManager defaultManager];
	[fileManager createFileAtPath:toPath contents:nil attributes:nil];//创建的是空文件
	self.writeFileHandle = [NSFileHandle fileHandleForWritingAtPath:toPath];
	
}
- (IBAction)taped:(UIButton *)sender
{
	NSData *subdata = nil;
	
	switch (sender.tag) {
		case 0:
		{
			subdata = [self.readFileHandle readDataOfLength:(NSUInteger)self.fileLength/3];
		}
			break;
			
		case 1:
		{
			subdata = [self.readFileHandle readDataOfLength:(NSUInteger)self.fileLength/3];

		}
			break;
			
		case 2:
		{
			subdata = [self.readFileHandle readDataToEndOfFile];
		}
			break;
	}
	[self.writeFileHandle writeData:subdata];
	[self.data appendData:subdata];
	self.imageView.image = [UIImage imageWithData:self.data];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
