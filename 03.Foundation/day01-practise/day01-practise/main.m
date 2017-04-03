//
//  main.m
//  day01-practise
//
//  Created by Patrick Yu on 6/17/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

/*
 定义三个类，TRAnimal， TRDog ，TRCat，TRDog TRCat 继承TRAnimal。
TRAnimal有个属性age，有一个eat能力（显示age属性的值，并输出调用了eat方法）。
创建一个TRDog对象，且属性值为：5。
复制该对象。向第二个dog对象发送使用performSelector 发送eat消息，要保证调用的安全性
（注意：安全性有几种判断方式？）
*/

/*
定义两个类TRPerson，TRSuperman，
定义两个协议person（job），fly（fly）
使用两个类创建两个对象，分别使用performSelector 发送job消息，fly 消息，如何保证代码的安全性。
*/

#import <Foundation/Foundation.h>
#import "TRAnimal.h"
#import "TRDog.h"
#import "TRCat.h"

#import "TRPerson.h"
#import "TRSuperman.h"

int main(int argc, const char * argv[])
{

	@autoreleasepool {
		
		//practise-1
	    TRAnimal *dog = [[TRDog alloc] init];
		if ([TRDog isSubclassOfClass:[TRAnimal class]]) {
			
		}
		dog.age = 5;
		[dog eat];
		TRAnimal *dog2 = [[TRDog alloc] init];
		dog2 = [dog copy];
		if ([TRDog instancesRespondToSelector:@selector(eat)] && [dog2 isKindOfClass:[TRDog class]]) {
			[dog2 performSelector:@selector(eat)];
		}
		
		
		
		
		
		//practise-2
		
		
		TRPerson *person1 = [[TRPerson alloc] init];
		if ([person1 isKindOfClass:[TRPerson class]] && [person1 conformsToProtocol:@protocol(person)]) {
			[person1 performSelector:@selector(job)];
		}
		
		
		TRSuperman *superman1 = [[TRSuperman alloc] init];
		[superman1 performSelector:@selector(fly)];
		
		
		
		
		
	}
    return 0;
}

