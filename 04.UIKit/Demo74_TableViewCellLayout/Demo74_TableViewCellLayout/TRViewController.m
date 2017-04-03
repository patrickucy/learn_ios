//
//  TRViewController.m
//  Demo74_TableViewCellLayout
//
//  Created by Patrick Yu on 8/7/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRMusicsViewController.h"

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
	TRMusicsViewController *musicsController = [[TRMusicsViewController alloc] initWithNibName:@"TRMusicsViewController" bundle:nil];
	
	musicsController.musicGroup = [[TRMusicGroup alloc] initWithFakeData];
	
	UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:musicsController];
	[self presentViewController:navi animated:YES completion:nil];
}


-(void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
