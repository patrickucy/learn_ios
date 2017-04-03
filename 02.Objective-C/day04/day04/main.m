//
//  main.m
//  day04
//
//  Created by Patrick Yu on 6/10/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRPoint.h"
#import "TRStudent.h"

int main(int argc, const char * argv[])
{

	@autoreleasepool {
		
		/*
	    TRPoint* point = [[TRPoint alloc] init];//调用无参数的初始化方法，初始化值清零
		TRPoint* point2 = [[TRPoint alloc] initWithX:30 andY:40]; //直接就初始化了数据
		point.x =10;
		point.y =20;
		[point showXAndY];
		[point2 showXAndY];
		*/
		
		/*
		//对象创建的三种方法
		TRStudent* student = [[TRStudent alloc] init];
		[student test]; //通过实例调用的方法就是这样的
		[TRStudent test2]; //通过类调用的方法
		
		TRStudent* student2=[TRStudent student];
		
		TRStudent* student3 = [TRStudent new];
		NSLog(@"student2 address %p",student2);
		 */
		
		NSString* str = [[NSString alloc] initWithFormat:@"XXXXX"]; //实例初始化方法的调用
		NSString* str2 = [NSString stringWithFormat:@"XXXXXX"];   //工厂方法的调用
		
		TRPoint* point1 = [[TRPoint alloc] initWithX:12 andY:23];
		TRPoint* point2 = [TRPoint pointWithX:44 andY:90];
		NSLog(@"point1  x:%d  y:%d",point1.x,point1.y);
		NSLog(@"point2  x:%d  y:%d",point2.x,point2.y);

		
		
	}
    return 0;
}

