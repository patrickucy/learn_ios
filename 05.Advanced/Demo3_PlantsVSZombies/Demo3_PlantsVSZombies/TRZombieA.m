//
//  TRZombieA.m
//  Demo2_Zombie
//
//  Created by Patrick Yu on 8/9/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRZombieA.h"

@implementation TRZombieA

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		self.zombieImage = [UIImage imageNamed:@"zomb_1"];
		
    }
    return self;
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
