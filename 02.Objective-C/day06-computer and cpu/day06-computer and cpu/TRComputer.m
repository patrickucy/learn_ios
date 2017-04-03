//
//  TRComputer.m
//  day06-computer and cpu
//
//  Created by Patrick Yu on 6/13/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRComputer.h"

@implementation TRComputer
-(void)powerOn{
	NSLog(@"computer is powered on");
	[self run];
	[self start];
}

-(void)start
{
	NSLog(@"computer starts running");
}
@end
