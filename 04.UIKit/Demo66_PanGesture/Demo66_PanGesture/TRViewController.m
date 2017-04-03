//
//  TRViewController.m
//  Demo66_PanGesture
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
	UIPanGestureRecognizer *panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(pan:)];
	[self.imageView addGestureRecognizer:panGestureRecognizer];
}

-(void)pan:(UIPanGestureRecognizer *)sender
{
	//CGPoint currentLocation = [sender translationInView:sender.view];
	//self.imageView.transform = CGAffineTransformTranslate(self.imageView.transform, currentLocation.x, currentLocation.y);
	//[sender setTranslation:CGPointZero inView:self.view];
	
	if (sender.state == UIGestureRecognizerStateBegan) {
		self.imageView.transform = CGAffineTransformMakeScale(1.2, 1.2);
	}else if(sender.state == UIGestureRecognizerStateEnded){
		self.imageView.transform = CGAffineTransformIdentity;
	}
	
	
	CGPoint currentLoation = [sender translationInView:self.view];//这里特别注意,你得到的坐标是在这个 view 当中的点
	CGPoint centerPoint = self.imageView.center;
	centerPoint.x += currentLoation.x;
	centerPoint.y += currentLoation.y;
	self.imageView.center = centerPoint;
	[sender setTranslation:CGPointZero inView:self.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
