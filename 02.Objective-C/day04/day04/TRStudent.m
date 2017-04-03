//
//  TRStudent.m
//  day04
//
//  Created by Patrick Yu on 6/11/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRStudent.h"

@implementation TRStudent
-(id)initWithAge:(int)age
{
	self = [super init];
	if (self) {
		_age = age;
	}
	return self;
}
-(void)test
{
	NSLog(@"instance method is implemented");
}

+(void)test2
{
	NSLog(@"class method is implemented");
}
+(id)student
{
	TRStudent* student = [[TRStudent alloc] init];
	return student;
}
+(id)studentWithAge:(int)age
{
	TRStudent* student = [[TRStudent alloc] initWithAge:age];
	return student;
}
@end
