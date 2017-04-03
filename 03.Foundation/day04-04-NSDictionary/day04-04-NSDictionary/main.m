//
//  main.m
//  day04-04-NSDictionary
//
//  Created by Patrick Yu on 6/22/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRStudent.h"

int main(int argc, const char * argv[])
{

	@autoreleasepool {
		//1.初始化
	    NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
		NSMutableDictionary *dictionary2 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"4",@"four", nil];//依次为值和key
		NSDictionary *dictionary3 = @{@"four": @"4",
									  @"three":@"3"};
		//2.添加key 和value
		[dictionary setValue:@"1" forKey:@"one"];
		[dictionary setValue:@"2" forKey:@"two"];
		[dictionary setValue:@"2" forKey:@"three"];

	    //3.用key来找value
		NSString *obj = [dictionary objectForKey:@"one"];
		NSLog(@"%@",obj);
		
		//4.遍历字典集合
		NSArray *keys = [dictionary allKeys];
		for (NSString *key in keys) {
			NSString *value = [dictionary objectForKey:key];
			NSLog(@"value:%@ -> key:%@",value,key);
		}
		
		
		TRStudent *student1 = [[TRStudent alloc] initWithName:@"jack" andAge:20];
		TRStudent *student2 = [[TRStudent alloc] initWithName:@"tom" andAge:19];
		TRStudent *student3 = [[TRStudent alloc] initWithName:@"david" andAge:21];
		TRStudent *student4 = [[TRStudent alloc] initWithName:@"alan" andAge:17];
		TRStudent *student5 = [[TRStudent alloc] initWithName:@"marry" andAge:16];
		TRStudent *student6 = [[TRStudent alloc] initWithName:@"annie" andAge:22];
		TRStudent *student7 = [[TRStudent alloc] initWithName:@"willian" andAge:10];
		TRStudent *student8 = [[TRStudent alloc] initWithName:@"daisy" andAge:25];
		
		NSMutableArray *class1210A = [[NSMutableArray alloc] init];
		NSMutableArray *class1210B = [[NSMutableArray alloc] init];
		NSMutableArray *class1210C = [[NSMutableArray alloc] init];
		NSMutableArray *class1210D = [[NSMutableArray alloc] init];

		[class1210A addObject:student1];
		[class1210A addObject:student2];
		
		[class1210B addObject:student3];
		[class1210B addObject:student4];
		
		[class1210C addObject:student5];
		[class1210C addObject:student6];
		
		[class1210D addObject:student7];
		[class1210D addObject:student8];
		//创建学院
		NSMutableDictionary *tarena3G = [NSMutableDictionary dictionaryWithObjectsAndKeys:class1210A,@"class1210A", class1210B,@"class1210B",nil];
		NSMutableDictionary *tarenaTest = [NSMutableDictionary dictionaryWithObjectsAndKeys:class1210C,@"class1210C", class1210D,@"class1210D",nil];
		//创建学校
		NSMutableDictionary *tarena = [NSMutableDictionary dictionaryWithObjectsAndKeys:tarena3G,@"3G",tarenaTest,@"Test", nil];
		
		NSArray *tarenaKeys = [tarena allKeys];
		for (NSString *tarenakey in tarenaKeys) { //其中某个key
			NSArray *classKeys =[[tarena objectForKey:tarenakey] allKeys];
			for (NSString *classkey in classKeys) {
				NSMutableArray *class =[[tarena objectForKey:tarenakey] objectForKey:classkey];
				for (TRStudent *student in class){
					NSLog(@"%@",student);
				}
			}
		}
	}
    return 0;
}

