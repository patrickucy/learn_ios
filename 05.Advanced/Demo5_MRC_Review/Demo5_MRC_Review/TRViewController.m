//
//  TRViewController.m
//  Demo5_MRC_Review
//
//  Created by Patrick Yu on 8/10/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRZombie.h"
#import "TRZombieA.h"
#import "TRZombieB.h"
#import "TRZombieC.h"
#import "TRMouse.h"


@interface TRViewController ()

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	
	/*
	//-setter 如果为 strong 内部会把
	-(void)setZombies:(NSMutableArray *)zombies{
		[_zombies release];
		_zombies = [zombies retain]; //这就是为什么 +1
	}
	*/
	self.zombies = [NSMutableArray array];
	
	//这行代码会先把上面这个给 release 了在放
	//也就是一只手只能控制一个风筝,当你想要放第二个风筝的时候,你必须把上一个风筝给回收回来,才能放第二个风筝,要不然第一风筝就飞了,泄漏掉了,永远找不回来了
	//内存泄漏的话,内存就会被垃圾堆满了,会导致系统重启
	self.zombies = [NSMutableArray array];
	
	
	TRZombieA *zombie = [[TRZombieA alloc] initWithFrame:CGRectMake(200, 300, 30, 60)];//计数为1
	[self.view addSubview:zombie];//其实这段代码计数加了,加多少不知道
	
	[zombie release];//计数为0
	
	
	
	TRMouse *mouse = [[TRMouse alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
	[mouse setBackgroundColor:[UIColor redColor]];
	[self.view addSubview:mouse];//会对此对象的内存计数增加(增加几不一定)
	[mouse release];
	
	[NSTimer scheduledTimerWithTimeInterval:3
									 target:self
								   selector:@selector(removeZombie:)
								   userInfo:zombie
									repeats:NO];
}

-(void)removeZombie:(NSTimer *)timer
{
	TRZombieA *zombie = timer.userInfo;
	[zombie removeFromSuperview];
	NSLog(@"三秒时间到!!!");
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
