//
//  TRViewController.m
//  Demo8_Practise2
//
//  Created by Patrick Yu on 6/24/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) TRMessages *messages;
@end

@implementation TRViewController
- (IBAction)clearbuttonTaped:(UIButton *)sender
{
	[self.messages.displayedMessages removeAllObjects];
}
- (IBAction)keyboardSendButtonTaped:(id)sender
{
	[self sendButtonTaped:nil];
	[self.textField resignFirstResponder];
}
- (IBAction)sendButtonTaped:(UIButton *)sender
{
	NSLog(@"send button is tapped");
	if (![self.textField.text isEqual: [NSString stringWithFormat:@""]]) {
		
		
		
		if ([self.messages.displayedMessages count]) {
			float thisObjectHeight = ((UILabel*)[self.messages.displayedMessages lastObject]).bounds.size.height + ((UILabel*)[self.messages.displayedMessages lastObject]).frame.origin.y +10;
			
			UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(10, thisObjectHeight,300, 20)];
			label.text = self.textField.text;
			label.backgroundColor = [UIColor greenColor];
			[self.messages.displayedMessages addObject:label];
			[self.view addSubview:label];
			self.textField.text = @"";
		}else {
			UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(10, self.textField.bounds.size.height + self.textField.frame.origin.y +10, 300, 20)];
			label.text = self.textField.text;
			label.backgroundColor = [UIColor greenColor];
			[self.messages.displayedMessages addObject:label];
			[self.view addSubview:label];
			self.textField.text = @"";
		}
	}else {
		UIAlertView *alterView = [[UIAlertView alloc] initWithTitle:@"Warning"
															message:@"you have to type in your content"
														   delegate:nil
												  cancelButtonTitle:@"Cancel"
												  otherButtonTitles:nil];
		[alterView show];
	}
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	self.messages = [[TRMessages alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
