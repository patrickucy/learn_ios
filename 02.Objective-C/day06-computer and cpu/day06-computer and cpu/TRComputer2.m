//
//  TRComputer2.m
//  day06-computer and cpu
//
//  Created by Patrick Yu on 6/13/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRComputer2.h"

@implementation TRComputer2
-(id)init
{
	if (self = [super init]) {
		self.cpu = [[TRCpu2 alloc] init];//天生的CPU，而且没有违反封装性
	}
	return self;
}

-(void)powerOn{
	NSLog(@"computer2 is powered on");
	[self.cpu run];
	[self start];
}

-(void)start
{
	NSLog(@"computer2 starts running");
}
@end
