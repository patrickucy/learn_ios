//
//  main.m
//  day04-02-NSSet
//
//  Created by Patrick Yu on 6/21/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRStudent.h"

int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    TRStudent *student = [[TRStudent alloc] init];
		student.age  = 18;
		student.name = @"zhangsan";
		TRStudent *student2 = [[TRStudent alloc] init];
		student2.age = 18;
		student2.name = @"zhangsan";
		TRStudent *student3 = [[TRStudent alloc] init];
		student3.age = 18;
		student3.name = @"wangwu";
		
		//NSLog(@"%lu",(unsigned long)[student hash]);
		//NSLog(@"%lu",(unsigned long)[student2 hash]);
		
		NSMutableSet *sets = [[NSMutableSet alloc] init];
		
	    [sets addObject:student];
		[sets addObject:student2];
		[sets addObject:student3];
		for (TRStudent *student in sets) {
			NSLog(@"name:%@ age:%ld",student.name,student.age);
		}
	}
    return 0;
}

