//
//  TRViewController.m
//  Demo9_Modal
//
//  Created by Patrick Yu on 6/24/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRSecondViewController.h"

@interface TRViewController ()

@end

@implementation TRViewController

- (IBAction)tap:(id)sender
{
	TRSecondViewController *secondViewController = [[TRSecondViewController alloc]initWithNibName:@"TRSecondViewController" bundle:nil];
	secondViewController.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	[self presentViewController:secondViewController animated:YES completion:nil];
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
