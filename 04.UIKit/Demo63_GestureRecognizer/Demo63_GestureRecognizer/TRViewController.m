//
//  TRViewController.m
//  Demo63_GestureRecognizer
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
	//1.创建
	UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc]initWithTarget:self
																						  action:@selector(tap:)];
	//2.修改
	tapGestureRecognizer.numberOfTapsRequired = 1;
	tapGestureRecognizer.numberOfTouchesRequired = 1;
	//3.加入到 view 中
	[self.view addGestureRecognizer:tapGestureRecognizer];
	
	//1.创建
	UIPinchGestureRecognizer *pinchGestureRecognizer = [[UIPinchGestureRecognizer alloc] initWithTarget:self
																								 action:@selector(pinch:)];
	//self.imageView.userInteractionEnabled = YES;
	//[self.imageView addGestureRecognizer:pinchGestureRecognizer];
	
	[self.view addGestureRecognizer:pinchGestureRecognizer]; // 这里你也要区别一下!分别用上面的代码和下面的代码在逻辑上是有区别的
}


-(void)tap:(UITapGestureRecognizer *)sender
{
	NSLog(@"%@",sender);
}

-(void)pinch:(UIPinchGestureRecognizer *)sender
{
	NSLog(@"%lf %lf",sender.scale, sender.velocity);
	//开始的时候,还没按下去 scale 就是1,当两个点的距离变短的话, scale 值会越来越小.当两个点距离拉开的话 scale 就会变大
	//velocity 复数就是捏,整数就是张,速度越快数值就会越大
	if (sender.scale < 0.5 && sender.velocity < -5.0) {
		self.imageView.hidden = YES;
	}else if (sender.scale > 1 && sender.velocity > 1.0){
		self.imageView.hidden = NO;
	}
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
