//
//  TRViewController.m
//  Demo2_Zombie
//
//  Created by Patrick Yu on 8/9/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRZombie.h"
#import "TRZombieA.h"
#import "TRZombieB.h"
#import "TRZombieC.h"

@interface TRViewController ()

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	
	[NSTimer scheduledTimerWithTimeInterval:.5
									 target:self
								   selector:@selector(addZombie)
								   userInfo:nil repeats:YES];
}

-(void)addZombie
{
	//随机数 :arc4random()%400   0~399 随机数
	// 8~20
	// arc4random()%13 + 8
	int height = self.view.bounds.size.height - 70;
	
	int random = arc4random()%3;
	TRZombie *zombie = nil;
	switch (random) {
		case 0:
		{
			zombie = [[TRZombieA alloc] initWithFrame:CGRectMake(self.view.bounds.size.width, arc4random()%height, 40, 70)];
		}
			break;
		case 1:
		{
			zombie = [[TRZombieB alloc] initWithFrame:CGRectMake(self.view.bounds.size.width, arc4random()%height, 40, 70)];
		}
			break;
		case 2:
		{
			zombie = [[TRZombieC alloc] initWithFrame:CGRectMake(self.view.bounds.size.width, arc4random()%height, 40, 70)];
		}
			break;
			
		default:
			break;
	}
	[self.view addSubview:zombie]; // 把子类当做父类来用
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
