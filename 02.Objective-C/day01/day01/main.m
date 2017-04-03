//
//  main.m
//  day01
//
//  Created by Patrick Yu on 6/9/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
BOOL ifIsEqualOfTwoInts(int a, int b)
{
	if (a == b) {
		return YES;
	}else {
		return NO;
	}
}

int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    
	    // insert code here...
	    NSLog(@"Hello, World!");
	    
		//OC中的新数据类型
		bool b1 = false;//就表示1 false
		BOOL b2 = NO; //官方建议这种表达方式
		NSLog(@"%hhd",ifIsEqualOfTwoInts(12, 12));
	}
    return 0;
}

