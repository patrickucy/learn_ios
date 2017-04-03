//
//  TRViewController.m
//  Demo50_TicketSellingProblem
//
//  Created by Yu on 10/7/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()
@property (nonatomic) int tickets;
@property (nonatomic) int selledCount;
@property (nonatomic,strong) NSLock *myLock;
@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	self.myLock = [[NSLock alloc] init];
	self.tickets = 100;
//	旧的方式开线程,这种方式开启的线程会直接执行方法
//	[NSThread detachNewThreadSelector:@selector(sellAction) toTarget:self withObject:nil];
	
	
//	这种新的开启线程的方式,不会直接执行,需要后续手动调用start来开启这个线程
	NSThread *t1 = [[NSThread alloc] initWithTarget:self selector:@selector(sellAction) object:nil];
	t1.name = @"一号窗口";
	[t1 start];
	
	NSThread *t2 = [[NSThread alloc] initWithTarget:self selector:@selector(sellAction) object:nil];
	t2.name = @"二号窗口";
	[t2 start];
}


-(void)sellAction
{
//	当你用两个线程调用这行代码的时候,你会发现,数据会被两个线程抢着来用,这样会导致逻辑上的混乱
	while (YES) {
//	实现线程的同步->也就是在线程执行以下代码的时候实现互斥,比如:当线程1执行这行代码的时候,线程2也就不要执行了,只有当线程1执行完之后才允许线程2 执行此代码段(这也就是加synchronized的目的)
//	有这个synchronized的意思是,当线程1进入这个线程之后,这段代码就锁上了,这样子线程2也就进不去了,只有当线程1执行结束后,这段代码才会自动解锁,这样子线程2排队在线程1后面,然后就线程2执行这行代码
//		实现线程同步,需要传递一个对象,对象里面有一个锁的标识,通常这个参数写的是self,意思是把这个对象上锁,解锁的操作
//		如果你就是不想用self,非要对某一个对象进行多线程的同步操作,那么就要把self的对应的参数的那个位置改成全局变量(属性),通常还是写self
		
		
//		@synchronized(self){ //^^^^^^^^^同步式自动上锁区域[开始]^^^^^^^^^
			
//		&&&&&&&&手动式上锁[开始]&&&&&&&&-记得要声明成属性
		[self.myLock lock];
			NSLog(@"%@开始卖%d号票",[NSThread currentThread].name,self.selledCount +1);
			[NSThread sleepForTimeInterval:1];
			NSLog(@"%@%d号卖票完成,剩余%d张票",[NSThread currentThread].name,self.selledCount +1,self.tickets - (self.selledCount+1));
			self.selledCount ++;
			[NSThread sleepForTimeInterval:.5];
//		]&&&&&&&&手动式上锁[结束]]&&&&&&&&
		[self.myLock unlock];
		
		
//		}//^^^^^^^^^同步式自动上锁区域[结束]^^^^^^^^^
		
	}
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
