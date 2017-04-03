//
//  TRViewController.m
//  Demo65_Transform
//
//  Created by Patrick Yu on 8/4/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()<UIGestureRecognizerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	self.imageView.userInteractionEnabled = YES;
	
	UIPinchGestureRecognizer *pinchGestureRecognizer =
	[[UIPinchGestureRecognizer alloc] initWithTarget:self
											  action:@selector(pinch:)];
	pinchGestureRecognizer.delegate = self;
	[self.imageView addGestureRecognizer:pinchGestureRecognizer];
	
	
	UIRotationGestureRecognizer *rotationGestureRecognizer =
	[[UIRotationGestureRecognizer alloc] initWithTarget:self
												 action:@selector(rotate:)];
	rotationGestureRecognizer.delegate = self;
	[self.imageView addGestureRecognizer:rotationGestureRecognizer];
	
	
	
}


-(void)pinch:(UIPinchGestureRecognizer *)sender
{
	//拿出来,改一改,放回去
	CGAffineTransform transform = self.imageView.transform;
	transform = CGAffineTransformScale(transform, sender.scale, sender.scale);
	self.imageView.transform = transform;
	sender.scale = 1;
		
}



-(void)rotate:(UIRotationGestureRecognizer *)sender
{
	self.imageView.transform = CGAffineTransformRotate(self.imageView.transform, sender.rotation);
	sender.rotation = 0;
}


-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
	return YES;//啥都不管,反正这个方法就可以让屏幕可以同时识别两个手势
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
