//
//  TRPlant.m
//  Demo3_PlantsVSZombies
//
//  Created by Patrick Yu on 8/10/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRPlant.h"

@implementation TRPlant

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		//这个类跟僵尸是一模一样的除了不会移动
		[NSTimer scheduledTimerWithTimeInterval:.1
										 target:self
									   selector:@selector(changeImageAction:)
									   userInfo:nil
										repeats:YES];
    }
    return self;
}

-(void)changeImageAction:(NSTimer *)timer
{
	CGImageRef subImage = CGImageCreateWithImageInRect(self.plantImage.CGImage, CGRectMake(self.runCount++ % 8 * self.plantImage.size.width/8 * 2, 0, self.plantImage.size.width/8 *2, self.plantImage.size.height*2));
	self.image = [UIImage imageWithCGImage:subImage];
	CGImageRelease(subImage);
	
	
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
