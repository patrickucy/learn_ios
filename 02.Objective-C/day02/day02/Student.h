//
//  Student.h
//  day02
//
//  Created by Patrick Yu on 6/10/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
//property
@property int age;
//字符串是一个引用类型,基本上就是一个字符数组
@property NSString* name;

//method
-(void)study;
-(void)method1;
-(void)method2:(int) num;//声明了一个参数的方法
-(void)method3:(int) num1 :(int)num2;
-(void)setStudentAge:(int)age andName:(NSString*)name;
-(void)printInfoAge:(int)age andGender:(char)gender andSalary:(double)salary;
@end
