//
//  TRSecondViewController.m
//  Demo13_Practise1
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
		self.title = @"New Contact";
		self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(dismissSelfViewController)];
		self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(dismissSelfViewController)];
    }
    return self;
}

-(void)dismissSelfViewController{
	[self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
	NSLog(@"viewDidLoad");
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
