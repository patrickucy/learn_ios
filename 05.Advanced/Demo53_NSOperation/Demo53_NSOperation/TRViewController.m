//
//  TRViewController.m
//  Demo53_NSOperation
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
	NSOperation *o1 = [NSBlockOperation blockOperationWithBlock:^{
		NSLog(@"子线程的代码开始");
		[NSThread sleepForTimeInterval:5];
		NSLog(@"子线程代码结束");
	}];
	NSOperationQueue *myQueue = [[NSOperationQueue alloc] init];
//	设置当前最大线程数量
	[myQueue setMaxConcurrentOperationCount:1];
//	把operation对象加入到队列的瞬间,开始执行子线程
	NSLog(@"主线程代码");
//	这种开子线程的方式跟GCD很像
	NSOperation *o2 = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(runAction) object:nil];
//	这句话的意思是o2线程会依赖于o1,o2会等o1执行完之后才会执行
//	[o2 addDependency:o1];
	
	[myQueue addOperation:o1];
	[myQueue addOperation:o2];
}

-(void)runAction
{
	NSLog(@"o2子线程开始");
	[NSThread sleepForTimeInterval:5];
	NSLog(@"o2子线程结束");
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
