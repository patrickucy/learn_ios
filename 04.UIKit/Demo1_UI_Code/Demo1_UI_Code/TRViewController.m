//
//  TRViewController.m
//  Demo1_UI_Code
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
	
	//#1. creat
	UILabel *label = [[UILabel alloc]init];
	
	//#2. alter
	label.text = @"hello";
	label.frame = CGRectMake(10, 10, 150, 40);
	
	//#3. add
	[self.view addSubview:label];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
