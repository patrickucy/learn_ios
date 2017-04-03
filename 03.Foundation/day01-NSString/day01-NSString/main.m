//
//  main.m
//  day01-NSString
//
//  Created by Patrick Yu on 6/17/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

	@autoreleasepool {
		//空字符串，因为又不可以改变，所有是无用的
	    NSString *string1 = [[NSString alloc] init];
		
		NSLog(@"string1:%@ address:%p",string1,string1);
		
		
		//多次创建相同内容的字符串，只会创建一个
		NSString *string2 = @"hello";
		NSString *string3 = @"hello";
		
		NSLog(@"string2:%@ address:%p",string2,string2);
		NSLog(@"string3:%@ address:%p",string3,string3);
		
		
		//按指定格式来创建字符串
		NSString *string4 = [NSString stringWithFormat:@"%@ world",string2];
		NSLog(@"string4:%@ address:%p",string4,string4);
		
		NSString *string5 = @"hello";
		NSString *string6 = @"world";
		NSString *string7 = [NSString stringWithFormat:@"%@_%@",string5,string6];
		
		NSLog(@"string7:%@ address:%p",string7,string7);
		
		NSString *string8 = [NSString stringWithFormat:@"%@",string3];
		NSLog(@"string8:%@ address:%p",string8,string8);
		
		
		//可以读取文件中的内容
		//参数1 文件的路径 参数2 指定文件编码集  参数3 出现异常处理
		NSString *string9 = [NSString stringWithContentsOfFile:@"/Users/patrickyu/Desktop/yeah.rtf" encoding:NSUTF8StringEncoding error:nil];
		NSLog(@"string9:%@ address:%p",string9,string9);

		
		//可以读取来自网络的内容(这里地URL是不成功的，只是举例子)
		//NSString *string10 = [NSString stringWithContentsOfURL:@"http://www.163.com" encoding:NSUTF8StringEncoding error:nil];
		
		//字符串值的比较（千万不要不小心写成比较两个指针是否相等）
		NSString *string11 = @"username";
		NSString *string12 = [NSString stringWithFormat:@"%@",string11];
		NSLog(@"string11:%@ address:%p",string11,string11);
		NSLog(@"string12:%@ address:%p",string12,string12);
		
		if ([string11 isEqualToString:string12]) {
			NSLog(@"string11 equals to string12");
		}else {
			NSLog(@"string11 doesn't equal to string12");
		}
		
		//比较两个字符串的排序
		NSString *string13 = @"abc";
		NSString *string14 = @"aac";
		if ([string13 compare:string14] == NSOrderedSame) {
			NSLog(@"strings are equal");
		}else if ([string13 compare:string14] == NSOrderedAscending) {
			NSLog(@"ascending");
		} else if ([string13 compare:string14] == NSOrderedDescending) {
			NSLog(@"descending");
		}

		//忽略大小写比较两个字符串
		NSString *string15 = @"abc";
		NSString *string16 = @"Abc";
		if ([string15 caseInsensitiveCompare:string16] == NSOrderedSame) {
			NSLog(@"case insensitive same");
		} else if ([string15 caseInsensitiveCompare:string16] == NSOrderedAscending) {
			NSLog(@"case insensitive ascending");
		} else if ([string15 caseInsensitiveCompare:string16] == NSOrderedDescending){
			NSLog(@"case insensitive ascending");
		}
	}
    return 0;
}

