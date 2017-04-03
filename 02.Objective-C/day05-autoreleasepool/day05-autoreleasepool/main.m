//
//  main.m
//  day05-autoreleasepool
//
//  Created by Patrick Yu on 6/12/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRCpu.h"

int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    TRCpu* cpu = [[[TRCpu alloc] init] autorelease];//通知自动释放池结束前，向对象发送release消息
		
		
		
		NSLog(@"autoReleasePool before");
	}//释放
	NSLog(@"autoReleasePool after");
    return 0;
}

