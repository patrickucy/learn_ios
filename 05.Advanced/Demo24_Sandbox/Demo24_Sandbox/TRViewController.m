//
//  TRViewController.m
//  Demo24_Sandbox
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
	NSLog(@"%@",NSHomeDirectory());//得到沙盒的根目录
	
	//NSBundle 可以理解为一个路径对象, mainbundle 就是沙箱的主目录
//	NSString *path = [[NSBundle mainBundle] pathForResource:@"资源的名称,不是路径,而且不包括扩展名" ofType:@"这里就是写扩展名"];
	NSString *path = [[NSBundle mainBundle] pathForResource:@"1e30e924b899a9015d1d64cd1f950a7b0208f524" ofType:@"jpg"];
	NSLog(@"%@",path);
	//白文件加载到内存
	NSData *fileData = [NSData dataWithContentsOfFile:path];
	//这里这样子写纯粹是因为我现在用的是模拟器,没办法放进手机里面,如果真机就改成进入到 bundle 里面
	[fileData writeToFile:@"/Users/patrickyu/Desktop/jjj.png" atomically:YES];

	NSString *string = @"abc";
	NSString *stringPath = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents/a.txt"];
	[string writeToFile:stringPath atomically:YES encoding:NSUTF8StringEncoding error:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
