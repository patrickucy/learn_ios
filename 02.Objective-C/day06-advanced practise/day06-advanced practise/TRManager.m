//
//  TRManager.m
//  day06-advanced practise
//
//  Created by Patrick Yu on 6/15/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRManager.h"

@implementation TRManager
-(id)initWithName:(NSString *)name andJob:(NSString *)job andSalary:(double)salary
{
	if (self = [super init]) {
		self.name = name;
		self.job = job;
		self.salary = salary + 2000;
	}
	return self;
}

+(id)managerWithName:(NSString *)name andJob:(NSString *)job andSalary:(double)salary
{
	return [[TRManager alloc] initWithName:name andJob:job andSalary:salary];
}
@end
