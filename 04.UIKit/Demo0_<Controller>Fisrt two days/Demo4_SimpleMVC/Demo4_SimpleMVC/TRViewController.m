//
//  TRViewController.m
//  Demo4_SimpleMVC
//
//  Created by Patrick Yu on 6/23/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRPerson.h"

@interface TRViewController ()
@property (retain) TRPerson *person;
@end

@implementation TRViewController

-(void)initModel
{

	self.person = [[TRPerson alloc] init];
	self.person.userName = @"";
	self.person.password = @"1234";
	NSLog(@"(initial) name:%@ password:%@",self.person.userName,self.person.password);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	[self initModel];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)register:(id)sender
{
	self.person.userName = self.accountTextField.text;
	self.person.password = self.passwordTextField.text;
	NSLog(@"(updated) name:%@ password:%@",self.person.userName,self.person.password);

}
- (IBAction)accountTextFieldNextButton:(id)sender
{
	[self.passwordTextField becomeFirstResponder];
}
- (IBAction)didEndOnExit:(id)sender {
	[self.passwordTextField resignFirstResponder];
	[self.accountTextField resignFirstResponder];
}
- (IBAction)viewTouchDown:(id)sender
{
	[self.accountTextField resignFirstResponder];
	[self.passwordTextField resignFirstResponder];
}
@end
