//
//  TRViewController.m
//  Demo73_Redraw
//
//  Created by Patrick Yu on 8/7/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRMyView.h"

@interface TRViewController ()
@property (weak, nonatomic) IBOutlet TRMyView *myView;

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
	//self.myView.frame = self.view.frame;//这行代码不能加,一旦加了,就没有 Layout 的效果了
	//只要在 view 的属性里面选择 redraw 的模式就可以实现,即使布局变了,图片也会重绘!!!!!!!!!!!!!!
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
