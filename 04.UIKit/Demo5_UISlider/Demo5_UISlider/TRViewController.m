//
//  TRViewController.m
//  Demo5_UISlider
//
//  Created by Patrick Yu on 6/23/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation TRViewController
- (IBAction)valueChanged:(id)sender
{
	NSLog(@"...");
	UISlider *slider = sender;
	self.label.text = [NSString stringWithFormat:@"%f",slider.value] ;
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
