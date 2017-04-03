//
//  TRViewController.m
//  Demo2_UIButton
//
//  Created by Patrick Yu on 6/23/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	//#1. initialize
	UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	
	//#2. alter
	[button setTitle:@"haha" forState:UIControlStateNormal];
	button.frame = CGRectMake(10, 50, 300, 44);
	
	//#3. add
	[self.view addSubview:button];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
