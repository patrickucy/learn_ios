//
//  main.m
//  day02
//
//  Created by Patrick Yu on 6/10/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Student3.h"

int main(int argc, const char * argv[])
{

	@autoreleasepool {
		/*
		 
		//声明一个学生类型的变量stu
		//对象是在heap当中保存的，自己创建，自己回收
		//student alloc 在堆内存中开辟一个类型为Student的类型空间，这就叫做实例化
		Student* stu = [Student alloc] ;
		Student* stu2 = [Student alloc] ;
		//stu变量就是一个对象(引用，也叫做局部变量）
		stu.age = 18;
		stu2.age =28;
		NSLog(@"stu:%p",stu);
		NSLog(@"stu age:%d",stu.age);
		//学生 有什么 调用study函数
		//调用study方法，向stu对象发送study消息
		[stu study];
		[stu2 study];
		
		 */
		
		/*
		 
		Student* stu = [Student alloc];
		[stu method1];
		[stu method2:100];
		[stu method3:1 :2];
		[stu setStudentAge:18 andName:@"ysy"];//method4Arg1:Arg2:
		[stu printInfoAge:12 andGender:'F' andSalary:1000.1];
		 
		 */
		
		Student3* stu = [Student3 allc];
		//stu.age 无法访问实例变量
		int age = [stu test];//但是可以通过这种间接的方式（方法）访问数据，
 		
		
		
		
		
		
		
		
		
		
	}
    return 0;
}

