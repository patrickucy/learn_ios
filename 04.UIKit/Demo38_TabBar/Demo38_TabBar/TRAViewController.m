//
//  TRAViewController.m
//  Demo38_TabBar
//
//  Created by Patrick Yu on 7/29/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRAViewController.h"

@interface TRAViewController ()

@end

@implementation TRAViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
		self.title = @"AVC";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
	//self.tabBarItem.image
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
