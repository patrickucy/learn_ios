//
//  TRStudent.m
//  day03-5-NSArray
//
//  Created by Patrick Yu on 6/20/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRStudent.h"

@implementation TRStudent
-(NSString *)description
{
	return [NSString stringWithFormat:@"name:%@ age:%@",self.name,self.age];
}
@end
