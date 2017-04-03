//
//  TRViewController.m
//  Demo55_9Sllider_image.xcassets
//
//  Created by Patrick Yu on 7/31/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
/*	UIImage *image = [UIImage imageNamed:@"circle"];
	UIImage *resizedImage = [image resizableImageWithCapInsets:UIEdgeInsetsMake(110, 120, 110, 120) resizingMode:UIImageResizingModeStretch];
	[self.button setBackgroundImage:resizedImage forState:UIControlStateNormal];
 */
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
