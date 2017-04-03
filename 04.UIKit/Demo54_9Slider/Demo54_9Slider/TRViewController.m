//
//  TRViewController.m
//  Demo54_9Slider
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
	UIImage *image = [UIImage imageNamed:@"circle.jpg"];
	UIImage *resizedImage = [image resizableImageWithCapInsets:UIEdgeInsetsMake(130, 130, 130, 130) resizingMode:UIImageResizingModeStretch];
	[self.button setBackgroundImage:resizedImage forState:UIControlStateNormal];
	
	UIImage *image2 = [UIImage imageNamed:@"line.png"];
	UIImage *resizedImage2 = [image2 resizableImageWithCapInsets:UIEdgeInsetsMake(100, 100, 100, 10) resizingMode:UIImageResizingModeTile];
	self.imageView.image = resizedImage2;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
