//
//  TRViewController.m
//  Demo15_ConvertPointToView
//
//  Created by Patrick Yu on 8/15/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()
@property (weak, nonatomic) IBOutlet UIView *redView;
@property (weak, nonatomic) IBOutlet UIView *blueView;

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	self.blueView.clipsToBounds = YES; //让超出的范围不显示
}

- (IBAction)longPressAction:(UILongPressGestureRecognizer *)sender
{
	CGPoint p = [sender locationInView:self.view];
	switch (sender.state) {
		case UIGestureRecognizerStateBegan:
		{
			
		}
			break;
			
			
		case UIGestureRecognizerStateChanged:
		{
			self.redView.center = p;
			NSLog(@"Red View x:%f y:%f",self.redView.center.x,self.redView.center.y);
		}
			break;
			
			
		case UIGestureRecognizerStateEnded: // clip subview的话,超出本 view 的范围就会在本 view 内看不见了
		{
			if (CGRectContainsPoint(self.blueView.frame, p)) {
				//把相对于 self.view 的点转换成相对于 self.blueView 的点(记得关掉 autolayout)
				CGPoint newCenter = [self.view convertPoint:self.redView.center toView:self.blueView];
				self.redView.center = newCenter;

				[self.blueView addSubview:self.redView];
			}
		}
			break;
			
		default:
			break;
	}
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
