//
//  TRViewController.m
//  Demo49_BezierPath_Loading
//
//  Created by Patrick Yu on 7/30/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRLoadingView.h"


@interface TRViewController ()
@property (weak,nonatomic) IBOutlet TRLoadingView *loadingView;

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	self.loadingView.value = 0.3;
}
- (IBAction)sliderValueChange:(UISlider *)sender
{
	self.loadingView.value = sender.value;//你发现这样子设置了也没反应,那是因为没有 updateUI
	[self updateUserInterface];
}

-(void)updateUserInterface
{
	//以后凡是跟 UI 刷新有关的方法都可以放在这个地方了
	[self.loadingView setNeedsDisplay];//只有加了这行代码就可以刷新 UI 了,实际上间接的调用了 view 的 drawRect 方法
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
