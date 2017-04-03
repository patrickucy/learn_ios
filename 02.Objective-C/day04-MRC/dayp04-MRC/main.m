//
//  main.m
//  dayp04-MRC
//
//  Created by Patrick Yu on 6/11/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//	MRC内存管理

#import <Foundation/Foundation.h>
#import "TRStudent.h"
#import "TRBook.h"

int main(int argc, const char * argv[])
{

	@autoreleasepool {
		/*
		//标准的内存管理
		//通知引用计数器为1
	    TRStudent* student = [TRStudent alloc];//只有当发送了alloc消息才创建了对象，创建了对象之后才能发送消息
		[student study];
		NSLog(@"count:%ld",[student retainCount]);  //在ARC下不可以使用
		NSLog(@"student:%p",student);
	    TRStudent* student2 = student;
		[student2 retain]; // 要通知引用计数器加1
		NSLog(@"student2:%p",student2);
		[student release];  //使用引用计数器减1
		[student2 study];
		[student2 release];//引用计数器减1
						   //当引用计数器为0时，系统自动销毁对象
		 */
		
		TRBook* sanGuo = [[TRBook alloc]init];
		TRBook* hongLongMeng = [[TRBook alloc] init];
		sanGuo.price = 10;
		hongLongMeng.price =20;
		TRStudent* student = [[TRStudent alloc] init];
		student.book = sanGuo;
		[student study];
		student.book = hongLongMeng;
		[student study];
	}
    return 0;
}

