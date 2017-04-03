//
//  TRViewController.m
//  Demo70_layout
//
//  Created by Patrick Yu on 8/6/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}



-(void)viewDidLayoutSubviews
{
	[super viewDidLayoutSubviews];
	
	//只要是屏幕的布局发生了改变,这个方法,系统就会调用
	NSLog(@"%.2lf,%.2lf",self.view.bounds.size.width,self.view.bounds.size.height);
	CGRect frame = self.button.frame;
	frame.origin.x = self.view.bounds.size.width - frame.size.width - 20;
	
	self.button.frame = frame;
	
	frame = self.label.frame;
	frame.origin.x = self.view.bounds.size.width - frame.size.width -20;
	frame.origin.y = self.view.bounds.size.height - frame.size.height -20;
	self.label.frame = frame;
}

@end
