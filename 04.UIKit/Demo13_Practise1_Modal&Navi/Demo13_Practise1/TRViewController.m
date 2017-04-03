//
//  TRViewController.m
//  Demo13_Practise1
//
//  Created by Patrick Yu on 6/25/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRSecondViewController.h"
@interface TRViewController ()

@end

@implementation TRViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
		self.title = @"All Contacts";
		UIBarButtonItem *buttonAdd = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(buttonAddDidTap)];
		self.navigationItem.rightBarButtonItem = buttonAdd;
    }
    return self;
}

-(void)buttonAddDidTap{
	
	TRSecondViewController *secondViewController = [[TRSecondViewController alloc] initWithNibName:@"TRSecondViewController" bundle:nil];
	UINavigationController *secondViewNavigationController = [[UINavigationController alloc] initWithRootViewController:secondViewController];
	[self presentViewController:secondViewNavigationController animated:YES completion:nil];
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
