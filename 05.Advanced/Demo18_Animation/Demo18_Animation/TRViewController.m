//
//  TRViewController.m
//  Demo18_Animation
//
//  Created by Patrick Yu on 8/16/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *prettyGirlImageView;

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	//平移动画,渐变动画,旋转动画,缩放动画
	
}

-(void)updateLocation
{
	//NSLog(@"x:%f y:%f",self.prettyGirlImageView.frame.origin.x,self.prettyGirlImageView.frame.origin.y);
}

-(void)animationStop:(NSString *)aniamtionID
{
	NSLog(@"Animation Stops");
	//动画实现的方式2(推荐使用!!!!!!)
	[UIView animateWithDuration:2 animations:^{
		self.prettyGirlImageView.alpha = 0;
	} completion:^(BOOL finished) {
		NSLog(@"Animation 2 stops");
	}]; // 这个代码更简单!!!!!,实际上更下面的一模一样
}

- (IBAction)buttonTap:(UIButton *)sender
{
	//动画实现的方式1
	[UIView beginAnimations:@"animationID" context:nil];//这种方式你知道就好了,实际上上面那个简易的方法就已经可以解决所有问题了
	[UIView setAnimationDuration:3];
	[UIView setAnimationDelegate:self];
	[UIView setAnimationDidStopSelector:@selector(animationStop:)];//传参过去就是 animationID
	switch (sender.tag) {
		case 0:
		{
			self.prettyGirlImageView.center = CGPointMake(300, 300);
			
			[NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateLocation) userInfo:nil repeats:YES];
			//从上面的输出的结果是,动画只是一个虚影,你没办法得到他实时的位置坐标,实际上的原理是,它直接把图片放在了目的地,然后再通过3秒时间移过去,并不是用3秒通过坐标变化移动过去
		}
			break;
			
			
		case 1:
		{
//			CGAffineTransformRotate(CGAffineTransform t, CGFloat angle) 当前位置转
//			CGAffineTransformMakeRotation(CGFloat angle) 直接转
			//self.prettyGirlImageView.transform = CGAffineTransformMakeRotation(M_PI /2);
			self.prettyGirlImageView.transform = CGAffineTransformRotate(self.prettyGirlImageView.transform, M_PI /2);

		}
			break;
			
			
		case 2:
		{
			if (self.prettyGirlImageView.alpha == 0) {
				self.prettyGirlImageView.alpha = 1;
			}else {
				self.prettyGirlImageView.alpha = 0;
			}
		}
			break;
			
			
		case 3:
		{
			self.prettyGirlImageView.frame = CGRectMake(100, 100, 200, 200);
		}
			break;
	}
	
	[UIView commitAnimations];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
