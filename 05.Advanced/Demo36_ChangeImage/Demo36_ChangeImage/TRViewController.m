//
//  TRViewController.m
//  Demo36_ChangeImage
//
//  Created by Patrick Yu on 8/26/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()
@property (nonatomic) int index;
@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	UIScrollView *sv = [[UIScrollView alloc] initWithFrame:self.view.bounds];
	for (int i = 0; i<5; i++) {
		UIImageView *iv = [[UIImageView alloc] initWithFrame:CGRectMake(i*320, 0, 320, self.view.bounds.size.height)];
		iv.image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.png",i]];
		[sv addSubview:iv];
	}
	[self.view addSubview:sv];
	[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(changeAction:) userInfo:sv repeats:YES];
}

-(void)changeAction:(NSTimer *)timer
{
	UIScrollView *sv = timer.userInfo;

	//在过渡动画开始改变的地方添加动画
	CATransition *animation = [CATransition animation];
	animation.duration = .5;
	animation.type = @"oglFlip";
	animation.subtype = @"fromLeft";
	[sv.layer addAnimation:animation forKey:nil];
	
	self.index++;
	[sv setContentOffset:CGPointMake(self.index%5*320, 0)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
