//
//  main.m
//  day03-3-NSValue
//
//  Created by Patrick Yu on 6/19/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef struct _Point2{
	int x;
	int y;
}Point2;

int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    Point2 point;
		point.x =10;
		point.y =15;
		//参数1 结构变量在内存的地址
		//参数2 地址对应的结构体类型
		//结构体-》NSValue对象
		NSValue *value = [NSValue valueWithBytes:&point objCType:@encode(Point2)];
	    
		
		//NSValue对象-》结构体类型
		Point2 newPoint;//创建新的结构体空间
		[value getValue:&newPoint];//将结构体对象转换成普通结构体类型，并保存在newPoint的内存空间中
		NSLog(@"new point x:%d y:%d",newPoint.x,newPoint.y);
		
	    
	}
    return 0;
}

