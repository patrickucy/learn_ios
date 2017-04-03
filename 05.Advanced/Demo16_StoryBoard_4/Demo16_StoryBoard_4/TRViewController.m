//
//  TRViewController.m
//  Demo16_StoryBoard_4
//
//  Created by Patrick Yu on 8/15/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRSecondViewController.h"
#import "TRFourthViewController.h"

@interface TRViewController ()

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)tap:(UIButton *)sender
{
	//通过 storyboard 创建的一个新页面,也就是通过 storyboard 来代码创建 vc
	TRSecondViewController *secondVC = [self.storyboard instantiateViewControllerWithIdentifier:@"secondvc"];
	[self presentViewController:secondVC animated:YES completion:nil];
}

- (IBAction)jumpToXibView:(UIButton *)sender
{
	TRFourthViewController *fourthVC = [[TRFourthViewController alloc] init];
	[self presentViewController:fourthVC animated:YES completion:nil];
	//复用的情况下就会经常会用到 xib 创建出来的 view
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
