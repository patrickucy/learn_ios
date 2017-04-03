//
//  TRViewController.m
//  Demo64_RotationGesture
//
//  Created by Patrick Yu on 8/4/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	self.imageView.userInteractionEnabled = YES;
	UIRotationGestureRecognizer *rotationGestureRecognizer = [[UIRotationGestureRecognizer alloc] initWithTarget:self
																										  action:@selector(rotation:)];
	[self.imageView addGestureRecognizer:rotationGestureRecognizer];
	
}

-(void)rotation:(UIRotationGestureRecognizer *)sender
{
	NSLog(@"roatation:%lf,velocity:%lf",sender.rotation,sender.velocity);
	//CGAffineTransform transform = CGAffineTransformMake(CGFloat a, CGFloat b, CGFloat c, CGFloat d, CGFloat tx, CGFloat ty);
	
	//self.imageView.transform = 	CGAffineTransformRotate(self.imageView.transform, sender.rotation);
	//self.imageView.transform = CGAffineTransformMakeRotation(sender.rotation);//每次调用实际上是从0,0原点为参考开始
	
	self.imageView.transform = CGAffineTransformRotate(self.imageView.transform, sender.rotation);
	sender.rotation = 0; //实际上跟上面一样的!!!!!!!记住要拔 autolayout 给关了要不然是出来的效果是不正常的!!!!!!!!!!!!!!!!!
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
