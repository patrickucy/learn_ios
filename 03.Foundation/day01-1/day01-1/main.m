//
//  main.m
//  day01-1
//
//  Created by Patrick Yu on 6/17/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

/*
 NSObject
 */

#import <Foundation/Foundation.h>
#import "TRStudent.h"
#import "TRPerson.h"
#import "TRBook.h"	
#import "TRSubStudent.h"

void test1NSObjectLoadAndInitialize(){
	TRStudent *student = [[TRStudent alloc] init];
	//[student study];
	
	TRStudent *student2 = [[TRStudent alloc] init];
	//[student2 study];
	
	TRStudent *student3 = [[TRStudent alloc] init];
	//[student3 study];
}

void test2NSObjectCopy(){
	TRStudent *student = [[TRStudent alloc] init];
	TRStudent *student2 = [student copy];  //如果没有实现协议，是会发生内存错误的
	
	TRPerson *person = [[TRPerson alloc] initWithName:@"Steven" andAge:35];
	[person showInfo];
	TRPerson *person2 = [person copy];//copy的正常使用
	[person2 showInfo];
	
	TRBook *book = [[TRBook alloc] init];
	NSLog(@"book :%p",book);
	
	TRPerson *john = [[TRPerson alloc] init];
	john.book = book; //在property中已经定义了copy特性，所以就不用手动调用copy消息，实际上还是上面的效果，只不过省去了自己每次发送消息
	NSLog(@"john's book:%p",john.book);
}

void test3NSObjectClassinstanceAndSelector(){
	
	//类型安全检查，通过类对象判断一个类是否是一个类的子类
	
	if ([TRSubStudent isSubclassOfClass:[TRStudent class]]) {
		NSLog(@"is sub class");
	}else {
		NSLog(@"is not sub class");
	}
	
	
	if ([TRStudent instancesRespondToSelector:@selector(study)]) {
		NSLog(@"TRStudent class has study method");
	}else {
		NSLog(@"TRStudent class doesn't has study method");
	}
	
	TRStudent *student = [[TRStudent alloc] init];
	[student performSelector:@selector(study)];// 可以随时向对象发送任何消息，而不需要在编译的时候声明这些消息
	
}


int main(int argc, const char * argv[])
{

	@autoreleasepool {
		Protocol *p =  @protocol(NSCopying);
		if ([TRStudent conformsToProtocol:p]) {
			NSLog(@"TRStudent conforms NSCopying");
		}else {
			NSLog(@"TRStudent doesn't conforms NSCopying");
		}
		
	}
    return 0;
}

