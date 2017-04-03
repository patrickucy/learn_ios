//
//  TRComputer3.m
//  day06-computer and cpu
//
//  Created by Patrick Yu on 6/13/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRComputer3.h"

@implementation TRComputer3
-(void)powerOn{
	NSLog(@"computer3 is powered on");
	[self.cpu run];
	[self start];
}

-(void)start
{
	NSLog(@"computer3 starts running");
}
@end
