//
//  main.m
//  day04-MRC-Practise
//
//  Created by Patrick Yu on 6/12/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//	有一台电脑TRComputer，有playGame功能，显示CPU信心，有TRCpu属性，TRCpu有工作频率Hz（整数），电脑有玩游戏的功能，在玩游戏的时候显示CPU的频率，第一次玩游戏显示CPU信息AMD CPU 1000Ghz，换CPU Intel CPU2000hz，再玩一次游戏，注意内存管理

#import <Foundation/Foundation.h>
#import "TRComputer.h"
#import "TRCpu.h"
#import "TRMemory.h"

int main(int argc, const char * argv[])
{

	@autoreleasepool {
		TRComputer* computer = [[TRComputer alloc] init];
		TRCpu* amdCpu = [[TRCpu alloc] init];
		TRMemory* king = [[TRMemory alloc] init];
		
		
		
		computer.cpu = amdCpu;
		computer.memory = king;
		[computer playGame];
		
		TRCpu* intelCpu = [[TRCpu alloc] init];
		TRMemory* black = [[TRMemory alloc] init];
		computer.cpu =
	    
	}
    return 0;
}

