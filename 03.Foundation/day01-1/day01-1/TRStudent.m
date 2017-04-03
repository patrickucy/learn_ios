//
//  TRStudent.m
//  day01-1
//
//  Created by Patrick Yu on 6/17/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRStudent.h"

@implementation TRStudent
-(id)initWithAge:(int)age
{
	if (self = [super init]) {
		self.age = age;
	}
	return self;
}
-(id)copyWithZone:(NSZone *)zone
{
	return [[TRStudent alloc] initWithAge:self.age];//因为copy是会复制对象，但是对象的值（数据）并没有也一并的复制过去，所有这里在复制的时候就要把值部分的property也一并复制过去
}

+(void)initialize
{
	NSLog(@"initialize");
}

+(void)load
{
	NSLog(@"load");
}

-(void)study
{
	NSLog(@"study");
}
@end
