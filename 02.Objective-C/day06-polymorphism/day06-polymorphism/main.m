//
//  main.m
//  day06-polymorphism
//
//  Created by Patrick Yu on 6/15/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRAnimal.h"
#import "TRDog.h"

#import "TRTransportation.h"
#import "TRTexi.h"
#import "TRBus.h"
#import "TRBike.h"

#import "TRStudent.h"


int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    
		/*
	    // 引用多态
		TRAnimal* animal = [[TRAnimal alloc] init];
		TRAnimal *animal2 = [[TRDog alloc] init];
		[animal eat];
		[animal2 eat];
		[animal shout];
		[animal2 shout];
	    */
		
		//定义交通工具类TRTransportation，有一个能力print输出交通工具信息。
		//交通工具有：TRTexi的士，TRBus巴士，TRBike
		//创建5个交通工具，使用多态输出交通工具的信息。
		
		TRTransportation *tran1 = [[TRBus alloc]init];
		TRTransportation *tran2 = [[TRBike alloc] init];
		TRTransportation *tran3 = [[TRTexi alloc] init];
		TRTransportation *tran4 = [[TRTexi alloc] init];
		TRTransportation *tran5 = [[TRBike alloc] init];

		TRStudent *student1 = [[TRStudent alloc] init];
		student1.name = @"zhangsan";
		[student1 goToSchoolByTransportation:[TRTransportation transportationByNum:0]];
		
		TRStudent *student2 = [[TRStudent alloc] init];
		student2.name = @"lisi";
		[student2 goToSchoolByTransportation:[TRTransportation transportationByNum:1]];
	
		TRStudent *student3 = [[TRStudent alloc] init];
		student3.name = @"wangwu";
		[student3 goToSchoolByTransportation:[TRTransportation transportationByNum:2]];
		
		TRStudent *student4 = [[TRStudent alloc] init];
		student4.name = @"zhaoliu";
		[student4 goToSchoolByTransportation:[TRTransportation transportationByNum:2]];
		
		TRStudent *student5 = [[TRStudent alloc] init];
		student5.name = @"qianqi";
		[student5 goToSchoolByTransportation:[TRTransportation transportationByNum:0]];

		//多态也可以用于数组
		TRTransportation *trans[5];
		for (int i = 0; i < 5; i++) {
			trans[i] = [TRTransportation transportationByNum:i];
		}
		
		for (int i = 0; i < 5; i++) {
			[trans[i] print];
		}
	}
    return 0;
}

