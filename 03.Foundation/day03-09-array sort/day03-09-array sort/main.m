//
//  main.m
//  day03-09-array sort
//
//  Created by Patrick Yu on 6/21/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRStudent.h"

int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    NSArray *array = @[@"c",@"B",@"d",@"a"];
		NSLog(@"%@",array);
		//给数组排序的原则 compare
		//自动比较数组中的每一个元素
		NSArray *array2 = [array sortedArrayUsingSelector:@selector(compare:)];
	    NSLog(@"%@",array2);
		
		TRStudent *student1 = [[TRStudent alloc]initWithName:@"zhangsan" andAge:18];
		TRStudent *student2 = [[TRStudent alloc]initWithName:@"lisi" andAge:18];
		TRStudent *student3 = [[TRStudent alloc]initWithName:@"wangwu" andAge:18];

		NSArray *students = @[student1,student2,student3];
		NSLog(@"%@",students);
		
		NSArray *sortedStudents = [students sortedArrayUsingSelector:@selector(compareStudentName:)];
		NSLog(@"%@",sortedStudents);
		
		NSArray *sortedAgeStudents = [students sortedArrayUsingSelector:@selector(compareStudentAge:)];
		NSLog(@"%@",sortedAgeStudents);
		
		NSArray *sortedAgeThenNameStudents = [students sortedArrayUsingSelector:@selector(compareStudentAgeThenName:)];
		NSLog(@"%@",sortedAgeThenNameStudents);

		
		
		
	}
    return 0;
}

