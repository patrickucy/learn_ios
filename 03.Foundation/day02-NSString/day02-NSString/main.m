//
//  main.m
//  day02-NSString
//
//  Created by Patrick Yu on 6/18/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRStudent.h"

int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    int i=10;
		NSLog(@"i:%d",i);
		NSString *strI = [NSString stringWithFormat:@"%d",i];
		NSLog(@"str i :%@",strI);
		char d = 78;
		NSLog(@"%c",d);
		NSString *stringC = [NSString stringWithFormat:@"%c",d];
		NSLog(@"NSString char:%@",stringC);
		
		[strI intValue];
		
		TRStudent *student = [[TRStudent alloc] init];
		student.age = 18;
		student.name = @"zhangshan";
		NSLog(@"%@",student);
		
		NSString *string1 = @"zhANGsan";
		NSString *string2 = [string1 uppercaseString];
		NSString *string3 = [string1 lowercaseString];
		NSString *string4 = [string1 capitalizedString];
		NSLog(@"string1:%@",string1);
		NSLog(@"string2:%@",string2);
		NSLog(@"string3:%@",string3);
		NSLog(@"string4:%@",string4);

		
		NSString *string5 = @"abcedf";
		NSString *string6 = [string5 substringToIndex:3];//说白了就是保留前面多少个
		NSLog(@"string6:%@",string6);
		NSString *string7 = [string5 substringFromIndex:3]; //说白了就是前面有多少个不要
		NSLog(@"string7: %@",string7);
		NSRange range = {1,3};
		NSString *string8 = [string5 substringWithRange:range];
		NSLog(@"string8:%@",string8);
		
		NSString *string9 = @"112901198909110022";
		NSRange YearRange = {6,4};
		NSRange monthRange = {10,2};
		NSRange dayRange = {12,2};
		NSLog(@"year:%@ month:%@ day:%@",[string9 substringWithRange:YearRange],[string9 substringWithRange:monthRange],[string9 substringWithRange:dayRange]);
		
		NSString *string10 = @"abc";
		NSString *string11 = [string10 stringByAppendingString:@"def"];
		NSLog(@"string11:%@",string11);
		NSString *string12 = [string10 stringByAppendingFormat:@"123%@",@"def"];
		NSLog(@"string12:%@",string12);
		
		NSString *string13 = @"TRStudent.h";
		if ([string13 hasPrefix:@"TR"]) {
			NSLog(@"this string has prefix");
		}
		if ([string13 hasSuffix:@".h"]) {
			NSLog(@"this string has suffix");
		}
	}
    return 0;
}

