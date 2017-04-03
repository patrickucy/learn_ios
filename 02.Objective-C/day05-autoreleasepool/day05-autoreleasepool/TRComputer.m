//
//  TRComputer.m
//  day04-MRC-Practise
//
//  Created by Patrick Yu on 6/12/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRComputer.h"

@implementation TRComputer
-(id)initWithCpu:(TRCpu *)cpu andMemory:(TRMemory *)memory
{
	if (self = [super init]) {
		_cpu = [cpu retain]; //只有引用数据类型才加1
		_memory = [memory retain];
		//self.cpu = cpu;//就自动用retain描述了就不用手动来retain加1了，是可以直接用的
	}
}
-(void)playGame
{
	NSLog(@"playGame method is implemented,with CPU at frequency:%d GHz and memory with size: %d",self.cpu.frequency,self.memory.size);
}


-(void)dealloc
{
	[_cpu release]; //每个对象dealloc之前要dealloc他的所有属性
	[_memory release];
	NSLog(@"TRComputer is dealloced,cpu:%d memory:%d",self.cpu.frequency,self.memory.size);
}
@end
