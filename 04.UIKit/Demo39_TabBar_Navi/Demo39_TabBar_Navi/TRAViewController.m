//
//  TRAViewController.m
//  Demo39_TabBar_Navi
//
//  Created by Patrick Yu on 7/29/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRAViewController.h"
#import "TRCViewController.h"

@interface TRAViewController ()

@end

@implementation TRAViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
		self.title = @"AVC"; // 这里就不可以用 tabBarItem.title 来改名字了
		self.navigationItem.title = @"Navi - AVC";

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)tap:(id)sender {
	TRCViewController *cVC = [[TRCViewController alloc] initWithNibName:@"TRCViewController" bundle:nil];
	[self.navigationController pushViewController:cVC animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
