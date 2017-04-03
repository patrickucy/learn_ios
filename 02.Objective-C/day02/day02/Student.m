//
//  Student.m
//  day02
//
//  Created by Patrick Yu on 6/10/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "Student.h"

@implementation Student
-(void)study
{
	NSLog(@"age: %d the student can study",self.age);
}

-(void)method1
{
	NSLog(@"method1 is implemented");
}

-(void)method2:(int)num
{
	NSLog(@"method2 is implemented,parameter is :%d",num);
}

-(void)method3:(int)num1 :(int)num2
{
	NSLog(@"method3 parameter1: %d parameter2:%d",num1,num2);
}

-(void)setStudentAge:(int)age andName:(NSString *)name
{
	NSLog(@"set student age:%d and name:%@",age,name);//注意这里不能够用self.age self.name
}

-(void)printInfoAge:(int)age andGender:(char)gender andSalary:(double)salary
{
	NSLog(@"age:%d gender:%c salary:%lf",age,gender,salary);
}
@end
