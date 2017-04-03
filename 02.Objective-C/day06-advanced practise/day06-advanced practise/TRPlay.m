//
//  TRPlay.m
//  day06-advanced practise
//
//  Created by Patrick Yu on 6/15/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRPlay.h"

@implementation TRPlay
-(void)show:(TRArts *)arts
{
	[arts print];
	NSLog(@"play show: author:%@ year:%d",arts.author,arts.year);
}
@end
