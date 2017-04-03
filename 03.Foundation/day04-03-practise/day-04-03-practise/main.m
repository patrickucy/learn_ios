//
//  main.m
//  day-04-03-practise
//
//  Created by Patrick Yu on 6/22/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRPoint.h"
#import "TRStudent.h"
#import "TRClass.h"	
#import "TRCollege.h"
#import "TRUniversity.h"


int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    
	    TRPoint *point1 = [[TRPoint alloc]initWithX:3 andY:5];
		TRPoint	*point2 = [[TRPoint alloc] initWithX:3 andY:6];
		TRPoint	*point3 = [[TRPoint alloc] initWithX:3 andY:5];
		
		NSSet *set = [[NSSet alloc] initWithObjects:point1,point2,point3, nil];
		for (TRPoint *point in set) {
			NSLog(@"%@",point);
		}
		
		NSLog(@"==================================================================");
		
		TRStudent *student1 = [[TRStudent alloc] initWithName:@"jack" andAge:20];
		TRStudent *student2 = [[TRStudent alloc] initWithName:@"tom" andAge:19];
		TRStudent *student3 = [[TRStudent alloc] initWithName:@"david" andAge:21];
		TRStudent *student4 = [[TRStudent alloc] initWithName:@"alan" andAge:17];
		TRStudent *student5 = [[TRStudent alloc] initWithName:@"marry" andAge:16];
		TRStudent *student6 = [[TRStudent alloc] initWithName:@"annie" andAge:22];
		TRStudent *student7 = [[TRStudent alloc] initWithName:@"willian" andAge:10];
		TRStudent *student8 = [[TRStudent alloc] initWithName:@"daisy" andAge:25];
		
		NSLog(@"%@",student1);
		
		TRClass *class1 = [[TRClass alloc] init];
		TRClass *class2 = [[TRClass alloc] init];
		TRClass *class3 = [[TRClass alloc] init];
		TRClass *class4 = [[TRClass alloc] init];
		
		class1.name = @"science";
		[class1.students addObject:student1];
		[class1.students addObject:student2];
		
		NSLog(@"%@",class1);
		
		class2.name = @"hunamity";
		[class2.students addObject:student3];
		[class2.students addObject:student4];
		
		class3.name	= @"engineering";
		[class3.students addObject:student5];
		[class3.students addObject:student6];
		
		class4.name = @"art";
		[class4.students addObject:student7];
		[class4.students addObject:student8];
		
		TRCollege *college1 = [[TRCollege alloc] init];
		TRCollege *college2 = [[TRCollege alloc] init];
		
		college1.name = @"philosophy";
		[college1.classes addObject:class1];
		[college1.classes addObject:class2];
		
		NSLog(@"%@",college1);
		
		college2.name = @"liberal arts";
		[college2.classes addObject:class3];
		[college2.classes addObject:class4];
		
		TRUniversity *university = [[TRUniversity alloc] init];
		university.name = @"University of California, Santa Cruz";
		[university.colleges addObject:college1];
		[university.colleges addObject:college2];
		
		NSLog(@"%@",university);
	    
	}
    return 0;
}

