//
//  TRViewController.m
//  Demo42_Extra_Control
//
//  Created by Patrick Yu on 7/29/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

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
}
- (IBAction)segmentControlDidChange:(UISegmentedControl *)sender {
	NSLog(@"%ld",(long)sender.selectedSegmentIndex);
	NSLog(@"%@",[sender titleForSegmentAtIndex:sender.selectedSegmentIndex]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
