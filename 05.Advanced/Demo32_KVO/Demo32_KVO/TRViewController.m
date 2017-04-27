//
//  TRViewController.m
//  Demo32_KVO
//
//  Created by Patrick Yu on 8/26/14.
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
	TRMouse *mouse = [[TRMouse alloc] init];
	mouse.delegate = self;
	//这样就监听了老鼠的 age 属性,当 age 发生改变的时候就会触发方法
	[mouse addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew context:nil];
    
	
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
	NSLog(@"keyPath:%@, object:%@, change:%@, context:%@",keyPath,object,change,context);
	TRMouse *m = object;
	self.ageLabel.text = [NSString stringWithFormat:@"%d",m.age];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
