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

-(id)copyWithZone:(NSZone *)zone
{
	return [[TRStudent alloc] initWithName:self.name andAge:self.age];
}

-(NSComparisonResult)compareStudentName:(TRStudent *)otherStudent
{
	return [self.name compare:otherStudent.name];//比较连个字符串的大小
}

-(NSComparisonResult)compareStudentAge:(TRStudent *)otherStudent
{
	return [[NSString stringWithFormat:@"%ld",self.age] compare:[NSString stringWithFormat:@"%ld",otherStudent.age]];

}

-(NSComparisonResult)compareStudentAgeThenName:(TRStudent *)otherStudent
{
	NSComparisonResult comparisionResult =[[NSString stringWithFormat:@"%ld",self.age] compare:[NSString stringWithFormat:@"%ld",otherStudent.age]];
	if (comparisionResult == NSOrderedSame) {
		return [self.name compare:otherStudent.name];
	}
	return comparisionResult;
	//在每个NSComparisonResult后面加个-（负号）就可以变成降序！！！！因为NSComparisonResult其实就是int -1 0 1.所以就可以这样更改
}


@end
