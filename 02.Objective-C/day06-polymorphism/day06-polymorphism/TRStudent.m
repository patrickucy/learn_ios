//
//  TRStudent.m
//  day06-polymorphism
//
//  Created by Patrick Yu on 6/15/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRStudent.h"

@implementation TRStudent
-(void)goToSchoolByTransportation:(TRTransportation *)transportation
{
	//所有的引用数据类型都是%@来作占位符
	NSLog(@"student:%@ go to school by",self.name);
	[transportation print];
}
@end
