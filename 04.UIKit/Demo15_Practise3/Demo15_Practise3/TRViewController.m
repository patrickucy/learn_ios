//
//  TRViewController.m
//  Demo15_Practise3
//
//  Created by Patrick Yu on 6/26/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRMessages.h"

@interface TRViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) TRMessages *messages;
@end

@implementation TRViewController

- (IBAction)sendButtonDidTap:(id)sender
{
	NSLog(@"send button is tapped");
	if (![self.textField.text isEqual: [NSString stringWithFormat:@""]]) {
		
		
		
		if ([self.messages.displayedMessages count]) {
			float thisObjectHeight = ((UILabel*)[self.messages.displayedMessages lastObject]).bounds.size.height + ((UILabel*)[self.messages.displayedMessages lastObject]).frame.origin.y +10;
			
			UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(10, thisObjectHeight,300, 20)];
			label.text = self.textField.text;
			label.backgroundColor = [UIColor greenColor];
			[self.messages.displayedMessages addObject:label];
			[self.scrollView addSubview:label];
			self.textField.text = @"";
		}else {
			UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(10, 0, 300, 20)];
			label.text = self.textField.text;
			label.backgroundColor = [UIColor greenColor];
			[self.messages.displayedMessages addObject:label];
			[self.scrollView addSubview:label];
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



- (IBAction)keyboardSendButtonTaped:(id)sender
{
	[self sendButtonDidTap:nil];
	[self.textField resignFirstResponder];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

    }
    return self;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
	self.messages = [[TRMessages alloc] init];
	self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height * 3);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
