//
//  TRViewController.m
//  Demo51_HitMouse
//
//  Created by Yu on 10/7/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRMouse.h"

@interface TRViewController ()

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	[NSThread detachNewThreadSelector:@selector(addMouseTime) toTarget:self withObject:nil];
	
}

-(void)addMouseTime
{
	while (YES) {
		[NSThread sleepForTimeInterval:1];
//		加了这行代码之后,子线程实际上只是起了计时的作用,除此之外也就没什么功能了
		[self performSelectorOnMainThread:@selector(addMouseUI) withObject:nil waitUntilDone:NO];
		
	}
}


-(void)addMouseUI
{
	TRMouse *m = [[TRMouse alloc] initWithFrame:CGRectMake(arc4random()%(320-30) + 15, arc4random()%(550-30)+15, 30, 30)];
	[m addObserver:self forKeyPath:@"isDead" options:NSKeyValueObservingOptionNew context:nil];
	[self.view addSubview:m];
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
	TRMouse *m = object;
	if (m.isDead) {
		int successCount = [self.successLabel.text intValue] +1;
		self.successLabel.text = [NSString stringWithFormat:@"%d",successCount];
//		老鼠被点击掉之后移除监听
//		[m removeObserver:self forKeyPath:@"isDead"];
	}else {
//		老鼠跑了
		int failCount = [self.failLabel.text intValue] +1;
		self.failLabel.text = [NSString stringWithFormat:@"%d",failCount];
	}
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
