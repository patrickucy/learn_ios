//
//  TRViewController.m
//  Demo71_layout_practise
//
//  Created by Patrick Yu on 8/7/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()
@property (weak, nonatomic) IBOutlet UIButton *buttonTopLeft;
@property (weak, nonatomic) IBOutlet UIButton *buttonTopRight;
@property (weak, nonatomic) IBOutlet UIButton *buttonBottomLeft;
@property (weak, nonatomic) IBOutlet UIButton *buttonBottomMiddle;
@property (weak, nonatomic) IBOutlet UIButton *buttonBottomRight;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidLayoutSubviews
{
	CGRect frame = self.buttonTopLeft.frame;
	frame.size.width = self.view.bounds.size.width / 2 - 25;
	frame.origin.x = 20;
	frame.origin.y = 20;
	self.buttonTopLeft.frame = frame;
	
	frame = self.buttonTopRight.frame;
	frame.size.width = self.view.bounds.size.width / 2 - 25;
	frame.origin.x = self.view.bounds.size.width - 20 - frame.size.width;
	frame.origin.y = 20;
	self.buttonTopRight.frame = frame;
	
	frame = self.imageView.frame;
	frame.size.width = self.view.bounds.size.width - 40;
	frame.size.height = self.view.bounds.size.height - 50 - 70;
	frame.origin.x = 20;
	frame.origin.y = 70;
	self.imageView.frame = frame;
	
	frame = self.buttonBottomRight.frame;
	frame.origin.x = self.view.bounds.size.width - frame.size.width - 20;
	frame.origin.y = self.view.bounds.size.height - 20 - frame.size.height;
	self.buttonBottomRight.frame = frame;
	
	frame = self.buttonBottomMiddle.frame;
	frame.origin.x = self.buttonBottomRight.frame.origin.x - 10 - frame.size.width;
	frame.origin.y = self.buttonBottomRight.frame.origin.y;
	self.buttonBottomMiddle.frame = frame;
	
	frame = self.buttonBottomLeft.frame;
	frame.origin.x = self.buttonBottomMiddle.frame.origin.x - 10 - frame.size.width;
	frame.origin.y = self.buttonBottomMiddle.frame.origin.y;
	self.buttonBottomLeft.frame = frame;
	
	

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
