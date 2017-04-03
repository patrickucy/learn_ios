//
//  TRSecondViewController.m
//  Demo12_Communication_Inverse2_Delegate
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
		//#3 因为已经是 id 类型了你就不可以这样直接的传值了
		// self.sourceViewController.message = self.textField.text;
		
		//#4(动刀1.2) 你在这里就会发现,你需要 c1 来发送消息来传 c2 的改动,然而这个 c1是不存在这个 updateMessage 消息的
		//[self.sourceViewController updateMessage:self.textField.text];
		//#10(动刀2.3) 因为你已经没有 sourceViewController, 变成 delegate 了
		[self.delegate secondViewController:self updateMessage:self.textField.text];
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
