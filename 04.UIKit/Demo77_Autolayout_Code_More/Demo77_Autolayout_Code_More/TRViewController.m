//
//  TRViewController.m
//  Demo77_Autolayout_Code_More
//
//  Created by Patrick Yu on 8/8/14.
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
	UIButton *bt1 = [UIButton buttonWithType:UIButtonTypeSystem];
	[bt1 setTitle:@"Button1" forState:UIControlStateNormal];
	[bt1 setBackgroundColor:[UIColor yellowColor]];
	[self.view addSubview:bt1];
	
	UIButton *bt2 = [UIButton buttonWithType:UIButtonTypeSystem];
	[bt2 setTitle:@"Button2" forState:UIControlStateNormal];
	[bt2 setBackgroundColor:[UIColor yellowColor]];
	[self.view addSubview:bt2];
	
	UIButton *bt3 = [UIButton buttonWithType:UIButtonTypeSystem];
	[bt3 setTitle:@"Button3" forState:UIControlStateNormal];
	[bt3 setBackgroundColor:[UIColor yellowColor]];
	[self.view addSubview:bt3];
	
	//自动布局了之后,基本上你就不用手动代码改动一个 view 的 frame 了.约束会去做这些工作
	//1.关掉autoresizing 自动翻译成约束的功能
	bt1.translatesAutoresizingMaskIntoConstraints = NO;
	bt2.translatesAutoresizingMaskIntoConstraints = NO;
	bt3.translatesAutoresizingMaskIntoConstraints = NO;
	
	
	//2.创建多个约束
	NSString *vlf = @"|-20-[button1]-10-[button2(button1)]-10-[button3(button1)]-20-|"; //这里只是描述对象,与上面的命名没有关系
	
	NSDictionary *views = @{@"button1":bt1, @"button2":bt2, @"button3":bt3};
	//@{@"bt1":bt1,"bt2":bt2,"bt3":bt3}; 这就是下面这个宏函数的作用,当然,上面的 vlf 里面的对象的字符也要相应地改变,个人建议不要用这个,语法上不好区别,因为这个是一个宏函数,来自 c 语言
	//NSDictionary *views = NSDictionaryOfVariableBindings(bt1,bt2,bt3);
	
	NSDictionary *metrics = @{@"left":@20,@"right":@20,@"mid":@10};//实际上就是描述一下距离
	vlf =@"|-left-[button1]-mid-[button2(button1)]-mid-[button3(button1)]-right-|";

	NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat: vlf
											options:NSLayoutFormatAlignAllCenterY
											metrics:metrics // 这个参数就一定要加进来,如果你不用,就直接用最上面的 vlf
											  views:views];
	[self.view addConstraints:constraints];
	
	//3.创建纵向约束vertical
	vlf = @"V:|-20-[button1]";
	constraints	= [NSLayoutConstraint constraintsWithVisualFormat:vlf
														  options:0
														  metrics:nil
															views:views];
	[self.view addConstraints:constraints];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
