//
//  TRViewController.m
//  Demo14_ImageView
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
	UIImage *image = [UIImage imageNamed:@"Rolling Waves.jpg"];
	UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
	imageView.frame = self.view.frame;
	imageView.contentMode = UIViewContentModeScaleAspectFit;

	[self.view addSubview:imageView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
