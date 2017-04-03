//
//  TRSecondViewController.m
//  Demo11_Communication_Inverse
//
//  Created by Patrick Yu on 6/24/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRSecondViewController.h"

@interface TRSecondViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation TRSecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)backButtonDidTap
{
	if (![self.textField.text isEqualToString:@""]) {
		self.sourceViewController.message = self.textField.text;
		[self dismissViewControllerAnimated:YES completion:nil];
	}else {
		UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Warning"
															message:@"you can't let your text field to be empty" delegate:nil
												  cancelButtonTitle:@"cancel"
												  otherButtonTitles: nil];
		[alertView show];
	}
}

- (IBAction)bigViewDidTouchDown
{
	[self.textField resignFirstResponder];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
