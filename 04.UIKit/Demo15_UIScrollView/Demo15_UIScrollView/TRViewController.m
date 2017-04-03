//
//  TRViewController.m
//  Demo15_UIScrollView
//
//  Created by Patrick Yu on 6/26/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()

@end

@implementation TRViewController

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
    // Do any additional setup after loading the view from its nib.
	UIImage *image = [UIImage imageNamed:@"Floating Ice.jpg"];
	UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
	
	UIScrollView *scrollView = [[UIScrollView alloc] init];
	[scrollView addSubview:imageView];
	
	scrollView.frame = self.view.frame;
	scrollView.contentSize = image.size;
	[self.view addSubview:scrollView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
