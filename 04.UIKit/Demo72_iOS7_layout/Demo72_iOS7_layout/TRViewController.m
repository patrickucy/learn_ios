//
//  TRViewController.m
//  Demo72_iOS7_layout
//
//  Created by Patrick Yu on 8/7/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRMyViewController.h"

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
	TRMyViewController *controller = [[TRMyViewController alloc] initWithNibName:@"TRMyViewController" bundle:nil];
	UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:controller];
	[self presentViewController:navi animated:YES completion:nil];
	
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
