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
										repeats:YES];//这行代码会向计数加一,把zombie给了 timer,timer 就需要记住 zombie,
		//[timer invalidate];这个方法调用可以让 timer 停止
    }
    return self;
}

-(void)changeImageAction:(NSTimer *)timer
{
	//如果僵尸从界面当中删除掉的话,把 timer 停止
	if (!self.superview) {
		NSLog(@"timer invalidate");
		[timer invalidate];//timer 一结束僵尸就自动销毁了
	}
	
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
