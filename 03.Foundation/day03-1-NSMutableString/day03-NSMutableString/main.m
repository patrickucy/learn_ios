//
//  main.m
//  day03-NSMutableString
//
//  Created by Patrick Yu on 6/19/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    //1.初始化
	    NSMutableString *string1 = @"abc";
		//[string1 appendString:@"123"];
		NSLog(@"string1:%@",string1);
		//由于“”字面值字符串，我们是不能操作其空间的,所以这种初始化操作是错误的
		NSMutableString *string2 = [[NSMutableString alloc] init];
		[string2 appendString:@"123"];
		NSLog(@"string2:%@",string2);
		
		//2.修改字符串的内容
		//在指定位置添加新的字符串
		[string2 insertString:@"one" atIndex:1];
		NSLog(@"string2:%@",string2);
		
		//3.可以替换指定位置的字符串，后面的字符串会向前补齐
		NSRange range = {4,1};
		[string2 replaceCharactersInRange:range withString:@"two"];
		NSLog(@"string2:%@",string2);
		
		//4.删除指定位置的字符串，后面的字符串会自动先前补齐
		NSRange range2 = {4,3};
		[string2 deleteCharactersInRange:range2];
		NSLog(@"string2:%@",string2);
 	    
		//5.字符串拼接
		//appendFomat
		//appendString
	}
    return 0;
}

