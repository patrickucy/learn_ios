//
//  TRViewController.m
//  Demo44_JSON
//
//  Created by Yu on 9/4/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "SBJson.h"

@interface TRViewController ()

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	//制作成json
	NSArray *names = @[@"张三",@"李四",@"王五",@"赵六"];
	NSDictionary *mutableDictionary = @{@"name": @"张三",
										@"age":@20};
	SBJsonWriter *jsonWriter = [[SBJsonWriter alloc] init];
	NSString *jsonStringArray = [jsonWriter stringWithObject:names];
	NSString *jsonStringDictionanry = [jsonWriter stringWithObject:mutableDictionary];

	NSLog(@"%@",jsonStringArray);
	NSLog(@"%@",jsonStringDictionanry);
	
	//把json解析成对象, 对象(字典/数组)
	NSDictionary *newDict = [jsonStringDictionanry JSONValue]; //就这么一行代码就搞定了解析
	NSLog(@"%@\n************",newDict);
	
//	************** 自制json
	NSString *myJsonString = @"[{\"name\":\"三国\",\"author\":\"罗贯中\"},{\"name\":\"乔布斯传\",\"author\":\"乔布斯\"},{\"name\":\"西游记传\",\"author\":\"吴承恩\"}]";
	NSArray *books = [myJsonString JSONValue];
	for (NSDictionary *book in books) {
		NSLog(@"%@",book);
	}

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
