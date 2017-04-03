//
//  TRFifthViewController.m
//  Demo30_ChangeButtonStyle
//
//  Created by Patrick Yu on 8/25/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRFifthViewController.h"
#import "TRButton.h"

@interface TRFifthViewController ()

@end

@implementation TRFifthViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)changeButtonStyle:(TRButton *)sender
{
	[[NSNotificationCenter defaultCenter] postNotificationName:@"changeStyle" object:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
