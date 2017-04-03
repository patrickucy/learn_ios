//
//  TRDog.m
//  day01-practise
//
//  Created by Patrick Yu on 6/17/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRDog.h"

@implementation TRDog

-(id)initWithAge:(int) age
{
	if (self = [super init]) {
		self.age = age;
	}
	return self;
}

-(id)copyWithZone:(NSZone *)zone
{
	return [[TRDog alloc] initWithAge:self.age];
}
@end
