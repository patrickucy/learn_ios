//
//  TRMyViewController.m
//  Demo60_tintColor
//
//  Created by Patrick Yu on 8/1/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRMyViewController.h"

@interface TRMyViewController ()

@end

@implementation TRMyViewController

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
	self.title = @"Navigation Bar";
	self.view.tintColor = [UIColor redColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
