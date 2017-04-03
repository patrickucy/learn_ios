//
//  main.m
//  day03-2-NSNumber
//
//  Created by Patrick Yu on 6/19/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

//NSNumber
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

	@autoreleasepool {
		int i =10;
		//初始化实例方法
		NSNumber *number1 = [[NSNumber alloc] initWithInt:i];
		//初始化类方法
		NSNumber *number2 = [NSNumber numberWithInt:i];
		NSLog(@"number2:%@",number2);
	    NSNumber *hello = @2;
		NSLog(@"hello:%@",hello);
		
		[number1 intValue];
		
		float f =29.12;
		NSNumber *number3 = [[NSNumber alloc] initWithFloat:f];
		
		
	    
	}
    return 0;
}

