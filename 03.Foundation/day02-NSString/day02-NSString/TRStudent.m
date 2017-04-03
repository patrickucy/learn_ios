//
//  TRStudent.m
//  day02-NSString
//
//  Created by Patrick Yu on 6/19/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRStudent.h"

@implementation TRStudent
-(NSString *)description //
{
	return [NSString stringWithFormat:@"%@ %d",self.name,self.age];
}

@end
