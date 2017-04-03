//
//  TRViewController.m
//  Demo8_Practise4
//
//  Created by Patrick Yu on 6/24/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController () <UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *accountTextfield;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation TRViewController

- (IBAction)bigViewTouchDown
{
	[self.accountTextfield resignFirstResponder];
	[self.passwordTextField resignFirstResponder];
}
- (IBAction)accountTextFieldDidEndOnExit
{
	[self.accountTextfield resignFirstResponder];
	[self.passwordTextField becomeFirstResponder];
}

- (IBAction)logInButtonDidTap:(UIButton *)sender
{
	if ([self.accountTextfield.text isEqualToString:@""] || [self.passwordTextField.text isEqualToString:@""]) {
		UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Warning"
															message:@"Please type in your account and password"
														   delegate:nil
												  cancelButtonTitle:@"ignore"
												  otherButtonTitles: nil];
		[alertView show];
	}else {
		if ([self.accountTextfield.text isEqualToString:@"fish"] && [self.passwordTextField.text isEqualToString:@"1234"]) {
			self.label.text = self.accountTextfield.text;
		}else {
			UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Warning"
																message:@"Wrong account and pass word"
															   delegate:self
													  cancelButtonTitle:@"ignore"
													  otherButtonTitles:@"OK", nil];
			[alertView show];
		}
	}
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
	if (buttonIndex == 1) {
		self.passwordTextField.text = @"";
		[self.passwordTextField becomeFirstResponder];
	}
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
