//
//  TRViewController.m
//  Demo58_NavigationBar
//
//  Created by Patrick Yu on 7/31/14.
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
	UIImage *image = [UIImage imageNamed:@"bubble.png"];
	UIImage *resizedImage = [image resizableImageWithCapInsets:UIEdgeInsetsMake(10, 20, 10, 20) resizingMode:UIImageResizingModeStretch];
	//这样子取得的是最父级的 navigationController
	[self.navigationController.navigationBar setBackgroundImage:resizedImage forBarMetrics:UIBarMetricsDefault];
}


- (IBAction)buttonTouchUpInside:(UIButton *)sender
{
	TRMyViewController *myViewController = [[TRMyViewController alloc] initWithNibName:@"TRMyViewController" bundle:nil];
	UINavigationController *naviController = [[UINavigationController alloc]initWithRootViewController:myViewController];
	//美国 navigation bar
	UIImage *image = [UIImage imageNamed:@"bubble.png"];
	UIImage *resizedImage = [image resizableImageWithCapInsets:UIEdgeInsetsMake(10, 20, 10, 20) resizingMode:UIImageResizingModeStretch];
	[naviController.navigationBar setBackgroundImage:resizedImage forBarMetrics:UIBarMetricsDefault];
	[self presentViewController:naviController animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
	
}

@end
