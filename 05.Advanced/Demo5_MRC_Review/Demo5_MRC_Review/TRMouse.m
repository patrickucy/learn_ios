//
//  TRMouse.m
//  Demo5_MRC_Review
//
//  Created by Patrick Yu on 8/11/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRMouse.h"

@implementation TRMouse

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)dealloc
{
	[super dealloc];
	NSLog(@"老鼠被干掉");
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
