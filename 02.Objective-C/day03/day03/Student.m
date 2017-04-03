//
//  Student.m
//  day03
//
//  Created by Patrick Yu on 6/10/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "Student.h"

@implementation Student

-(int)age{	//属性名，getter方法名
	return _age; //实例变量名
}

-(void)setAge:(int)age
{
	_age = age;
}
@end
