//
//  TRViewController.m
//  Demo11_Communication_Inverse
//
//  Created by Patrick Yu on 6/24/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRSecondViewController.h"

@interface TRViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:YES];
	self.label.text = self.message;
}

- (IBAction)goToSecondViewButtonTapped
{
	TRSecondViewController *secondViewController = [[TRSecondViewController alloc] initWithNibName:@"TRSecondViewController" bundle:nil];
	
	secondViewController.sourceViewController = self;
	secondViewController.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	[self presentViewController:secondViewController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
