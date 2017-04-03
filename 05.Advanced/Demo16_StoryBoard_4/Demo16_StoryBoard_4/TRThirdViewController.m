//
//  TRThirdViewController.m
//  Demo16_StoryBoard_4
//
//  Created by Patrick Yu on 8/15/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRThirdViewController.h"

@interface TRThirdViewController ()

@end

@implementation TRThirdViewController

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
	//这个不是在 storyboard 取出来的 view Controller 是没办法通过 self.storyboard 取出来的
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
