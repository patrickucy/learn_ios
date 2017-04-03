//
//  TRViewController.m
//  Demo59_TableViewCell
//
//  Created by Patrick Yu on 8/1/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRMyTableViewController.h"

@interface TRViewController ()

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	self.title = @"Main";
}
- (IBAction)tap:(UIBarButtonItem *)sender
{
	TRMyTableViewController *myTableViewController = [[TRMyTableViewController alloc] initWithNibName:@"TRMyTableViewController" bundle:nil];
	
	[self.navigationController pushViewController:myTableViewController animated:YES];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
