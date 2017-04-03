//
//  TRViewController.m
//  Demo48_Thread
//
//  Created by Yu on 10/5/14.
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
//	当你写了下面这一段代码的时候,你在左边设置一个断点,你会发现当代真的执行到这段代码的时候,屏幕的背景实际上并没有变成红色,当你不断的执行下去代码的时候你才会发现背景颜色才会在后面的代码把背景设置成红色.这是为什么呢?
//	这是因为viewDidLoad这个代码是系统调用的,实际上幕后有很多代码隐含了,这就包括了绘制界面的一些代码
//	操作界面的代码并非代码执行完就立刻会有出现效果,要在自己的代码域全部执行完之后
	
	
//	self.view.backgroundColor = [UIColor redColor];
	
	
//	这种加载大文件的操作也是一种耗时的任务
	
	
//	[NSData dataWithContentsOfFile:@".mov"];
}
- (IBAction)tapped:(UIButton *)sender
{
//	加了这行代码你会发现,按钮不会立刻恢复,而是等了2秒之后才恢复,这也就证明了UI的绘制是在作用域结束之后才进行绘制的
	
	
//	[NSThread sleepForTimeInterval:2];
	
	
//	多线程的目的:1.是为了解决这种UI堵塞的这种情况,2.是一个任务需要多个线程同时操作,比如,同时下载多个图片
//	这是因为主线程被耗时的代码给占用了
//	(流程示意)程序开始	-> 数据准备 -> UI交互 -> 网络任务(耗时任务,流畅的流程卡在这里等待服务器响应) -> 得到响应 -> 更改客户端数据 -> 绘制界面(因为网路任务是耗时的,界面一直没办法绘制,UI卡住了,感觉就像是死机了)
	
	
//	开启一个新的线程去执行runAction方法(试试把这行注释掉,看下!面那行代码)
	[NSThread detachNewThreadSelector:@selector(runAction) toTarget:self withObject:Nil];
//	直接在主线程里面调用(试试把这行注释掉,看上!面那行代码)
//	[self runAction];
	
	NSLog(@"主线程代码");
}

-(void)runAction{
	for (int i = 0; i < 5; i++) {
		[NSThread sleepForTimeInterval:1];
		
		//(子线程上操作UI,这里是个错误示范)你会发现,你的意图是每隔1秒加一个label,但是最终出来的效果是,当for循环完全结束了才一次性加了5个label,原因跟之前解释的一样,也就是UI的添加是在作用域结束了之后一次性统一加上屏幕上的,而不是一执行到UI的代码片段就立刻加到屏幕上
//		UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50*i, 100, 30, 30)];
//		label.backgroundColor = [UIColor yellowColor];
//		[self.view addSubview:label];
//		label.text = [NSString stringWithFormat:@"%d",i];
		
		//为了不使主线程阻塞,这里就要在子线程中把有关UI的代码放在主线程执行,这里下面的代码就是调用主线程的代码
		[self performSelectorOnMainThread:@selector(updateUserInterface:) withObject:[NSNumber numberWithInt:i] waitUntilDone:NO];
		
		
		NSLog(@"子线程%d",i);
	}
//	这行代码的真实意思是,在子线程开了一个计数器,当时间到了之后就在主线程调用selector
	[NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(runA) userInfo:nil repeats:YES];
}

-(void)updateUserInterface:(NSNumber*)number
{
	int i = [number intValue];
	UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50 * i, 100, 30, 30)];
	label.backgroundColor = [UIColor yellowColor];
	[self.view addSubview:label];
	label.text = [NSString stringWithFormat:@"%d",i];

}


-(void)runA
{
	NSLog(@"");
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
