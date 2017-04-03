//
//  TRViewController.m
//  Demo61_WindowTintColor
//
//  Created by Patrick Yu on 8/1/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRMyViewController.h"

@interface TRViewController ()

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
}
- (IBAction)buttonTouchUpInside:(UIButton *)sender
{
	TRMyViewController *myController = [[TRMyViewController alloc] initWithNibName:@"TRMyViewController" bundle:nil];
	myController.view.tintColor = [UIColor redColor];
	[self.navigationController pushViewController:myController animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
