//
//  main.m
//  day06-computer and cpu
//
//  Created by Patrick Yu on 6/13/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRComputer.h"
#import "TRComputer2.h"
#import "TRCpu3.h"
#import "TRComputer3.h"

int main(int argc, const char * argv[])
{

	@autoreleasepool {
		//继承的运行方式
	   TRComputer *computer1 = [[TRComputer alloc] init];
		[computer1 powerOn];
		
		TRComputer2 *computer2 = [[TRComputer2 alloc] init];
		[computer2 powerOn];
		
		TRComputer3 *computer3 = [[TRComputer3 alloc] init];
		TRCpu3 *cpu3 = [[TRCpu3 alloc] init];//说白了聚合就是把cpu单独拿出来在运行时自己初始化，自定义程度高
		computer3.cpu = cpu3;
		[computer3 powerOn];
	}
    return 0;
}

