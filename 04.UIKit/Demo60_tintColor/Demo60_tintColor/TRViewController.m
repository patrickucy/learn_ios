//
//  TRViewController.m
//  Demo60_tintColor
//
//  Created by Patrick Yu on 8/1/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRMyViewController.h"

@interface TRViewController ()

@end

@implementation TRViewController
- (IBAction)buttonTouchUpInside:(UIButton *)sender
{
	TRMyViewController *myController = [[TRMyViewController alloc] initWithNibName:@"TRMyViewController" bundle:nil];
	UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:myController];
	navi.navigationBar.tintColor = [UIColor redColor];
	navi.navigationBar.barTintColor = [UIColor greenColor];
	[self presentViewController:navi animated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
