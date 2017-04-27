//
//  TRViewController.m
//  Demo7_UIAlertView
//
//  Created by Patrick Yu on 6/23/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController () <UIAlertViewDelegate>


@end

@implementation TRViewController
- (IBAction)tap:(id)sender
{
	UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Title"
														message:@"message"
													   delegate:self
											  cancelButtonTitle:@"cancel"
											  otherButtonTitles:@"button1",@"button2",@"button3",@"button4",nil];
	
	[alertView show];
}


-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
	NSLog(@"hahaha");
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
