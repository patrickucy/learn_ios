//
//  Student2.h
//  day03
//
//  Created by Patrick Yu on 6/10/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student2 : NSObject
{
	int _age; //声明式属性1
}
@property int age; //这就是声明式属性，自动生成setter getter方法
@end
