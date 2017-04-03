//
//  TRMemory.m
//  day04-MRC-Practise
//
//  Created by Patrick Yu on 6/12/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRMemory.h"

@implementation TRMemory
-(void)dealloc
{
	NSLog(@"TRMemory size : %d is dealloced",self.size);
}
@end
