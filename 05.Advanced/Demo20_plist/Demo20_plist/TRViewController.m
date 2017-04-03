//
//  TRViewController.m
//  Demo20_plist
//
//  Created by Patrick Yu on 8/16/14.
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
//	*************************把数据保存到文件中plist******************
	
//	NSArray *names = @[@"zhang san",@"li si",@"wang wu",@"zhao liu",@"tian qi",@"wang ba",];
//
//	NSLog(@"%@",NSHomeDirectory());
//	NSString *documentsPath = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"];
//	NSString *filePath = [documentsPath stringByAppendingPathComponent:@"names.plist"];
//	
//	[names writeToFile:filePath atomically:YES];
	
//	**************把文件中的数组数据加载到内存中***********************
	NSString *documentsPath = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"];
	NSString *filePath = [documentsPath stringByAppendingPathComponent:@"names.plist"];
	
	NSArray *names = [NSArray arrayWithContentsOfFile:filePath];
	NSLog(@"%@",names);
	
//	创建字典,把字典放进文件中
	NSMutableDictionary *dic = [NSMutableDictionary dictionary];
	[dic setValue:names forKey:@"names"];
	NSString *dicPath = [documentsPath stringByAppendingPathComponent:@"dic.plist"];
	[dic writeToFile:dicPath atomically:YES];
	
//	把字典读取到内存中
	NSDictionary *newDic = [NSDictionary dictionaryWithContentsOfFile:dicPath];
	NSLog(@"%@",newDic);
				
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
