//
//  TRStudent.m
//  day03-practise
//
//  Created by Patrick Yu on 6/20/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRStudent.h"

@implementation TRStudent

-(id)initWithName:(NSString *)name andAge:(NSInteger)age
{
	if (self = [super init]) {
		self.name = name;
		self.age = age;
	}
	return self;
}
-(NSString *)description
{
	return [NSString stringWithFormat:@"Student Name:%@  Age:%ld",self.name,self.age];
}

-(BOOL)isEqual:(id)object
{
	BOOL ageIsEqual = self.age == ((TRStudent*)object).age;
	BOOL nameIsEqual = self.name == ((TRStudent*)object).name;
	if (self == object) {
		return YES;
	}else if (ageIsEqual && nameIsEqual){
		return YES;
	}
	return NO;
}
@end
