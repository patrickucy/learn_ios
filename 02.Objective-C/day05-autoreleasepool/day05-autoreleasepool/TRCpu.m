//
//  TRCpu.m
//  day04-MRC-Practise
//
//  Created by Patrick Yu on 6/12/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRCpu.h"

@implementation TRCpu
-(void)dealloc
{
	NSLog(@"cpu frequency:%d dealloced",self.frequency);
}

-(id)initWithFrequency:(int)frequency
{
	if (self = [super init]) {
		_frequency = frequency;
	}
	return self;
}

+(id)cpu{
	return [[[TRCpu alloc] init] autorelease];
}

+(id)cpuWithFrequency:(int)frequency
{
	TRCpu* cpu = [[TRCpu alloc] initWithFrequency:frequency];
	return cpu;
}

@end
