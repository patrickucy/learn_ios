//
//  TRPoint.m
//  day04
//
//  Created by Patrick Yu on 6/11/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRPoint.h"

@implementation TRPoint
-(id)init{
	self = [super init]; //self代表当前对象或当前类
	if (self) {
		//一般这种无参数的初始化方法不用写
	}
	return self;
}

-(id)initWithX:(int)x andY:(int)y
{
	self = [super init];
	if (self) {
		//_x = x;
		//_y = y;
		self.x = x;  //这两种方法都是可以的，因为实际上都是操作实例变量，不过Stanford教授说的是初始化和setter getter就直接用实例变量
		self.y = y;
	}
	return self;
}

+(id)point
{
	TRPoint* point = [[TRPoint alloc] init];
	return point;
}

+(id)pointWithX:(int)x andY:(int)y
{
	TRPoint* point = [[TRPoint alloc] initWithX:x andY:y];
	return point;
}
-(void)showXAndY
{
	NSLog(@"x:%d y:%d",_x,_y);
}

-(int)getXValue
{
	return _x;
}

-(int)getYValue
{
	return _y;
}
@end
