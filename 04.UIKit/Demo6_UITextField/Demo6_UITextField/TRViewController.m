//
//  TRViewController.m
//  Demo6_UITextField
//
//  Created by Patrick Yu on 6/23/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)editingChanged:(UITextField *)sender
{
	self.label.text = sender.text;
}

- (IBAction)didEndOnExit:(id)sender
{
	[self.textField resignFirstResponder];
}

- (IBAction)bigViewTouchDown
{
	[self.textField resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
