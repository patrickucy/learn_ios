//
//  TRPerson.m
//  day01-1
//
//  Created by Patrick Yu on 6/17/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRPerson.h"

@implementation TRPerson
-(id)initWithName:(NSString *)name andAge:(int)age
{
	if (self = [super init]) {
		self.name = name;
		self.age = age;
	}
	return self;
}
-(void)showInfo
{
	NSLog(@"TRPerson name:%@ age:%d",self.name,self.age);
}

-(id)copyWithZone:(NSZone *)zone
{
	return [[TRPerson alloc] initWithName:self.name andAge:self.age];
}
@end
