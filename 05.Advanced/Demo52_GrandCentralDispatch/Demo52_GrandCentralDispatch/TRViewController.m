//
//  TRViewController.m
//  Demo52_GrandCentralDispatch
//
//  Created by Yu on 10/7/14.
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
}
- (IBAction)tapped:(UIButton *)sender
{
	//1.创建一个线程队列
	dispatch_queue_t myQueue = dispatch_queue_create("myQueue", NULL);//第二个参数没有任何作用直接给NULL,NULL是C语言的空指针
	//2.开启子线程,此线程加入到myQueue中,要特别注意是async,也就是异步,也就是多线程,也就是开启子线程(你刚才误写成sync了,所以阻塞了)
	dispatch_async(myQueue, ^{
		NSLog(@"子线程代码开始");
		[NSThread sleepForTimeInterval:2];
		NSLog(@"子线程的代码结束");
		
		//3.回到主线程
		dispatch_async(dispatch_get_main_queue(), ^{
			NSLog(@"从子线程又回到主线程");
		});
	});
	NSLog(@"主线程代码");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
