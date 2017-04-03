//
//  TRViewController.h
//  Demo5_MRC_Review
//
//  Created by Patrick Yu on 8/10/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TRViewController : UIViewController
{
	NSMutableArray *_zombies;
}

//-setter 如果为 weak 内部会把
/*
-(void)setZombies:(NSMutableArray *)zombies{
	_zombies = zombie;
}

//-setter 如果为 strong 内部会把
-(void)setZombies:(NSMutableArray *)zombies{
	[_zombies release];
	_zombies = [zombies retain]; //这就是为什么 +1
}
*/
//-getter


//property 的作用就是即创建了一个全局变量,又创建了一个 setter 和 getter 方法,就是上面的缩写
@property (nonatomic,strong) NSMutableArray *zombies;
@end
