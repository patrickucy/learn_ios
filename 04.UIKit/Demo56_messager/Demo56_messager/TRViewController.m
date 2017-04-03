//
//  TRViewController.m
//  Demo56_messager
//
//  Created by Patrick Yu on 7/31/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)backgroundViewDidTouchUpInside:(id)sender
{
	[self.textField resignFirstResponder];
}
- (IBAction)textFieldEditingDidBegin:(UITextField *)sender
{
	NSLog(@"textFieldEditingDidBegin");
	

}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
