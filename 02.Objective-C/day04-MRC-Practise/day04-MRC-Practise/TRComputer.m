//
//  TRComputer.m
//  day04-MRC-Practise
//
//  Created by Patrick Yu on 6/12/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRComputer.h"

@implementation TRComputer
-(void)playGame
{
	NSLog(@"playGame method is implemented,with CPU at frequency:%d GHz and memory with size: %d",self.cpu.frequency,self.memory.size);
}


-(void)dealloc
{
	[self.cpu release]; //每个对象dealloc之前要dealloc他的所有属性
	[self.memory release];
	NSLog(@"TRComputer is dealloced,cpu:%d memory:%d",self.cpu.frequency,self.memory.size);
}
@end
