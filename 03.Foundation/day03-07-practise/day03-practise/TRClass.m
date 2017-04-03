//
//  TRClass.m
//  day03-practise
//
//  Created by Patrick Yu on 6/20/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRClass.h"

@implementation TRClass
-(id)init{
	if (self = [super init]) {
		_students = [[NSMutableArray alloc] init];
	}
	return self;
}
-(NSString *)description
{
	return [NSString stringWithFormat:@"Class Name:%@  %@",self.name,self.students];
}
@end
