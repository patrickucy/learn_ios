//
//  Student.h
//  day03
//
//  Created by Patrick Yu on 6/10/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
{
	int _age; //属性的第一部分,通常把实例变量加一个下划线！！！！
}
//属性第二部分setter和getter声明
-(int)age;
-(void)setAge:(int)age;
@end
