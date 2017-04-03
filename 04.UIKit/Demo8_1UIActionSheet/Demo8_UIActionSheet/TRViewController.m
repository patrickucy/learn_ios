//
//  TRViewController.m
//  Demo8_UIActionSheet
//
//  Created by Patrick Yu on 6/23/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController () <UIActionSheetDelegate>

@end

@implementation TRViewController
- (IBAction)tap:(id)sender
{
	UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"标题"
															 delegate:self
													cancelButtonTitle:@"残忍拒绝"
											   destructiveButtonTitle:@"摧毁按钮"
													otherButtonTitles:@"第一个按钮",@"第二个按钮",@"第三个按钮", nil];
	[actionSheet showInView:self.view];
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
	
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
