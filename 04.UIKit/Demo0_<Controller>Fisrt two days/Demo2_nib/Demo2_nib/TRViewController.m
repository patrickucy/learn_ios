//
//  TRViewController.m
//  Demo2_nib
//
//  Created by Patrick Yu on 6/22/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myLabel;// 1.the purpose of puting a label here is that we need to make it a global variable, which is to be easily accessed by every method below

@end

@implementation TRViewController
- (IBAction)changText:(id)sender {
	NSLog(@"hi hi hi");
	self.myLabel.text = @"taped";
}

- (void)viewDidLoad
{
	NSLog(@"%@",self.view.subviews);
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
