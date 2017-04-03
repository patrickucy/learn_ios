//
//  TRViewController.m
//  Demo41_UIViewController_LifeCycle
//
//  Created by Patrick Yu on 7/29/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRBViewController.h"

@interface TRViewController ()

@end

@implementation TRViewController

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
	NSLog(@"AVC viewDidLoad");
}

-(void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
	NSLog(@"AVC viewWillAppear");
}

-(void)viewDidAppear:(BOOL)animated
{
	[super viewDidAppear:animated];
	NSLog(@"AVC viewDidAppear");
}

-(void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
	NSLog(@"AVC viewWillDisappear");
}

-(void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
	NSLog(@"AVC viewDidDisappear");
}

- (IBAction)tap:(id)sender {
	TRBViewController *bVc = [[TRBViewController alloc]initWithNibName:@"TRBViewController" bundle:nil];
	[self.navigationController pushViewController:bVc animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
