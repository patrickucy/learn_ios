//
//  TRViewController.m
//  Demo3_UIButton_Event
//
//  Created by Patrick Yu on 6/23/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()

@property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UIButton *button;
@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	self.label = [[UILabel alloc] init];
	self.label.text = @"...";
	self.label.frame = CGRectMake(10, 10, 200, 44);
	[self.view addSubview:self.label];
	
	self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[self.button setTitle:@"tap me" forState:UIControlStateNormal];
	self.button.frame = CGRectMake(10, 60, 200, 44);
	[self.view addSubview:self.button];
	
	[self.button addTarget:self action:@selector(tap) forControlEvents:UIControlEventTouchUpInside];
	
}

-(void)tap
{
	self.label.text = @"XXXXX";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
