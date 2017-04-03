//
//  main.m
//  day03-5-NSArray
//
//  Created by Patrick Yu on 6/19/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRStudent.h"

int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    //1.创建数组且初始化
		NSArray *array1 = [[NSArray alloc] init]; //这个是没意义的，不可变
		NSArray *array2 = [[NSArray alloc] initWithObjects:@"one",@"two",@"three", nil];
		NSLog(@"array2:%@",array2);
		
		//通过已有的数组创建数组
		NSArray *array3 = [NSArray arrayWithArray:array2];
		NSLog(@"array3:%@",array3);
		
		//2.数组常用方法
		long length = [array3 count];
		NSLog(@"array3 length:%ld",length);
		
		//通过数组的索引
		NSString *string = [array3 objectAtIndex:0];
		NSLog(@"array[0];%@",string);
		
		//3.遍历数组
		for (int i = 0; i < [array3 count]; i++) {
			NSString *string = [array3 objectAtIndex:i];
			NSLog(@"array3[%d]:%@",i,string);
		}
		
		//练习
		int i = 10;
		char c = 'a';
		BOOL boolean = YES;
		
		NSNumber *number = [NSNumber numberWithInt:i];
		NSString *string2 = [NSString stringWithFormat:@"%c",c];
		NSValue *boolValue = [NSValue valueWithBytes:&boolean objCType:@encode(BOOL)];
		TRStudent *student = [[TRStudent alloc] init];
		student.age = @18;
		student.name = @"david";
		NSArray *array4 = @[number,string2,boolValue,student];
		for (int i = 0; i<[array4 count]; i++) {
			NSLog(@"%@",array4[i]);
		}
		
	}
    return 0;
}

