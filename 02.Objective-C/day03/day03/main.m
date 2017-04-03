//
//  main.m
//  day03
//
//  Created by Patrick Yu on 6/10/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//	属性的适用

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Point1.h"

int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    
	    Student * student = [Student alloc];
		student.age	 =18;
		
		Point1* point = [Point1 alloc];
		point.x = 1.9;
		point.y = 20.1;
		NSLog(@"x:%f,y:%f",point.x,point.y);
		[point showXAndY];
	    
	}
    return 0;
}

