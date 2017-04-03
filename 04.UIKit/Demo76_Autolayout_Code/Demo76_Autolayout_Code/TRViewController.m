//
//  TRViewController.m
//  Demo76_Autolayout_Code
//
//  Created by Patrick Yu on 8/8/14.
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
	UILabel *label = [[UILabel alloc] init];
	label.text = @"helloWorld";
	//一般需要将 autoresizing 翻译成约束的功能关闭
	self.view.translatesAutoresizingMaskIntoConstraints = NO;
	label.translatesAutoresizingMaskIntoConstraints = NO;
	[self.view addSubview:label];

	//view1.attr1 =(relation) view2,attr2 * multiplier + c
	//  1    2     3             4    5      6           7
	id topConstraint = [NSLayoutConstraint constraintWithItem:label
								 attribute:NSLayoutAttributeTop
								 relatedBy:NSLayoutRelationEqual
									toItem:self.view
								 attribute:NSLayoutAttributeTop
								multiplier:1
								  constant:20];
	
	id leftConstraint = [NSLayoutConstraint constraintWithItem:label
								 attribute:NSLayoutAttributeLeft
								 relatedBy:NSLayoutRelationEqual
									toItem:self.view
								 attribute:NSLayoutAttributeLeft
								multiplier:1
								  constant:10];
	[self.view addConstraint:topConstraint];//注意这里还有个方法是 addConstraints 添加的是一组约束!!!!
	[self.view addConstraint:leftConstraint];
	
	
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
