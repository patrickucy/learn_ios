//
//  TRViewController.m
//  Demo34_Layer
//
//  Created by Patrick Yu on 8/26/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 200, 200)];
	UIImage *image = [UIImage imageNamed:@"a.jpg"];
	imageView.image = image;
	[self.view addSubview:imageView];
	
	//直接操作控件的层就是下面的几个属性
	
//	imageView.layer.borderColor = [[UIColor redColor] CGColor];
//	imageView.layer.borderWidth = 3;
//	imageView.layer.cornerRadius = 50;
//	imageView.layer.masksToBounds = YES;
	
	
	imageView.layer.shadowColor = [[UIColor grayColor] CGColor];
	imageView.layer.shadowOffset = CGSizeMake(10, 10);
	imageView.layer.shadowOpacity = 1;
	//阴影的发散程度,也就是模糊程度
	imageView.layer.shadowRadius = 10;
	
	
	//创建图层来自定义
	CALayer *shadowLayer = [CALayer layer];
	//通过更改下面的这个frame,你就可以通过这种自己创建layer的方式来作为imageView的阴影的功能,当然也是没有必要的,因为上面的代码就已经可以做到阴影的几乎所有功能了
	shadowLayer.frame = CGRectMake(200, 200, 100, 100);
	
	shadowLayer.backgroundColor = [[UIColor yellowColor] CGColor];
	shadowLayer.shadowOffset = CGSizeMake(10, 10);
	shadowLayer.shadowColor = [[UIColor blueColor] CGColor];
	shadowLayer.shadowOpacity = .8;
	shadowLayer.shadowRadius = 20;
	[self.view.layer addSublayer:shadowLayer];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
