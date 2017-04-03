//
//  TRViewController.m
//  Demo25_CopyFile
//
//  Created by Patrick Yu on 8/20/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	NSLog(@"%@",NSHomeDirectory());
	NSString *path = [[NSBundle mainBundle] pathForResource:@"a" ofType:@"jpg"];
	NSData *data = [NSData dataWithContentsOfFile:path];
	NSString *documentsPath = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"];
	NSString *newFilePath = [documentsPath stringByAppendingPathComponent:@"b,jpg"];
	[data writeToFile:newFilePath atomically:YES];
	
	//第二种方式得到图片路径
	NSString *mainBundlePath = [[NSBundle mainBundle] resourcePath];
	NSLog(@"%@",mainBundlePath);//这就说明了 bundle 是指. app 的目录的根目录, homedirectory 才是真正的沙盒主目录
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
