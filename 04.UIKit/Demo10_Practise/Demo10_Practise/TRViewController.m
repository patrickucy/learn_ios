//
//  TRViewController.m
//  Demo10_Practise
//
//  Created by Patrick Yu on 6/24/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRSecondViewController.h"

@interface TRViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)goToSecondView
{
	TRSecondViewController *secondViewController = [[TRSecondViewController alloc] initWithNibName:@"TRSecondViewController" bundle:nil];
	
	secondViewController.dataLabelText = self.textField.text;
	secondViewController.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	[self presentViewController:secondViewController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
