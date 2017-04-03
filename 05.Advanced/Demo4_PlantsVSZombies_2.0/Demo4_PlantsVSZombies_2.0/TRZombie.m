//
//  TRZombie.m
//  Demo2_Zombie
//
//  Created by Patrick Yu on 8/9/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRZombie.h"

@implementation TRZombie

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		//这个类就不是真正的僵尸了
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
	CGImageRef subImage = CGImageCreateWithImageInRect(self.zombieImage.CGImage, CGRectMake(self.runCount++ % 8 * self.zombieImage.size.width/8 * 2, 0, self.zombieImage.size.width/8 *2, self.zombieImage.size.height*2));
	self.image = [UIImage imageWithCGImage:subImage];
	CGImageRelease(subImage);
	
	//移动僵尸
	self.center = CGPointMake(self.center.x -2, self.center.y);
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
