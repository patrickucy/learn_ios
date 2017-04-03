//
//  TRSunFlower.m
//  Demo3_PlantsVSZombies
//
//  Created by Patrick Yu on 8/10/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRSunFlower.h"

@implementation TRSunFlower

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		self.plantImage = [UIImage imageNamed:@"plant_0"];
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
