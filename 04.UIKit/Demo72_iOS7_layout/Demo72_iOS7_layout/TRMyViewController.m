//
//  TRMyViewController.m
//  Demo72_iOS7_layout
//
//  Created by Patrick Yu on 8/7/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRMyViewController.h"

@interface TRMyViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation TRMyViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
		[[UIApplication sharedApplication] setStatusBarHidden:YES];
		self.edgesForExtendedLayout = UIRectEdgeNone;
		//设置 view 是否向其他透明的 view 所在位置延伸,以达到能够渗透的效果,因为延伸在了其他透明 view 的背面了
    }
    return self;
}

-(BOOL)prefersStatusBarHidden
{
	return YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


-(void)viewDidLayoutSubviews
{
	[super viewDidLayoutSubviews];
	if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0) {
		CGFloat topHeight = self.topLayoutGuide.length;
		NSLog(@"topHeight:%.2lf",topHeight);
		self.button.frame = CGRectMake(20, topHeight+20, self.button.frame.size.width, self.button.frame.size.height);
		self.label.frame = CGRectMake(self.view.frame.size.width - 20 - self.label.frame.size.width, topHeight + 20, self.label.frame.size.width, self.label.frame.size.height);
		
		CGFloat bottomHeight = self.bottomLayoutGuide.length;
		NSLog(@"bottomHeight:%.2lf",bottomHeight);//这个方法并不支持键盘出现这种情况,只是最下面的类似的 toolbar tabBar 才可以用
	}
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
