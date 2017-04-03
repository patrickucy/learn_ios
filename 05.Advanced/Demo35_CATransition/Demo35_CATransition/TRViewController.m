//
//  TRViewController.m
//  Demo35_CATransition
//
//  Created by Patrick Yu on 8/26/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()
@property (weak, nonatomic) IBOutlet UIView *myView;

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	[NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(changeAction) userInfo:nil repeats:YES];
	
}

-(void)changeAction
{
	CATransition *animation = [CATransition animation];
	/* The name of the transition. Current legal transition types include
	 * `fade', `moveIn', `push' and `reveal'. Defaults to `fade'. */
	//'cube'-'rippleEffect'-'suckEffect'-'oglFlip'='pageCurl'-'pageUncurl'-'cameraIrisHollowOpen'-'cameraIrisHollowClose
	animation.type = @"oglFlip";
	/* An optional subtype for the transition. E.g. used to specify the
	 * transition direction for motion-based transitions, in which case
	 * the legal values are `fromLeft', `fromRight', `fromTop' and
	 * `fromBottom'. */
	animation.subtype = @"fromLeft";
	animation.duration = 1;
	//记住这种过场动画的添加是加在两个变化的subview的共同superview上了
	//真正的实际原理还是,你想那个view.layer变化,你就加到哪个上面
//	[self.view.layer addAnimation:animation forKey:@"animation"];
	//为了不让big view动画,你应该自己创建一个view来装下两个图片来表示过渡动画 
	[self.myView.layer addAnimation:animation forKey:@"animation"];

	//	[self.view bringSubviewToFront:self.view.subviews[0]];
	//top layout guide 和bottom Layout guide 也是在self.view.subviews数组当中的
	//所以下面这个方法才是更正确的方式
	[self.myView exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
