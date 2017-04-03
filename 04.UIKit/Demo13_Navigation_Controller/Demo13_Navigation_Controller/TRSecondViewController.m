//
//  TRSecondViewController.m
//  Demo13_Navigation_Controller
//
//  Created by Patrick Yu on 6/25/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRSecondViewController.h"

@interface TRSecondViewController ()

@end

@implementation TRSecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
		self.hidesBottomBarWhenPushed = YES;

    }
    return self;
}
- (IBAction)tap:(id)sender
{
	[self.navigationController popViewControllerAnimated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
