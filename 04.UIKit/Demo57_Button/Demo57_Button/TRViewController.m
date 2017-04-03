//
//  TRViewController.m
//  Demo57_Button
//
//  Created by Patrick Yu on 7/31/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()
@property (weak, nonatomic) IBOutlet UIButton *buttonCustom;

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	UIImage *imageNormal  = [UIImage imageNamed:@"faces"];
	UIImage *imageHighlight = [UIImage imageNamed:@"plusButton"];
	[self.buttonCustom setImage:imageNormal forState:UIControlStateNormal];
	[self.buttonCustom setImage:imageHighlight forState:UIControlStateHighlighted];
	//你会发现按下去了,按钮是会变成不同的样子,这里故意用了不同的两个图片来表示
	//以上就是代码和在 xib 中不同的实现方式,在 xib 中直接在设置中改就可以了
	
	
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
