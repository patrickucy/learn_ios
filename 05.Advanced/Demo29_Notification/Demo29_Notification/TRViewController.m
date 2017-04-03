//
//  TRViewController.m
//  Demo29_Notification
//
//  Created by Patrick Yu on 8/25/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRSecondViewController.h"

@interface TRViewController ()

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	//添加一个通知的监听
	[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(myNotificationAction:) name:@"myNotification" object:nil];
	
}


-(void)myNotificationAction:(NSNotification *)notification
{
	NSString *string = notification.object;//这个 object 是 notification 发出着传过来的对象不是上面的那个对象
	self.myLabel.text = string;
	NSLog(@"第一个页面监听通知的方法执行了");
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
	TRSecondViewController *viewController = segue.destinationViewController;
	viewController.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
