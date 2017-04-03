//
//  TRBViewController.m
//  Demo41_UIViewController_LifeCycle
//
//  Created by Patrick Yu on 7/29/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRBViewController.h"

@interface TRBViewController ()

@end

@implementation TRBViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
	NSLog(@"BVC viewDidLoad");
}

-(void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
	NSLog(@"BVC viewWillAppear");
}

-(void)viewDidAppear:(BOOL)animated
{
	[super viewDidAppear:animated];
	NSLog(@"BVC viewDidAppear");
}

-(void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
	NSLog(@"BVC viewWillDisappear");
}

-(void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
	NSLog(@"BVC viewDidDisappear");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
