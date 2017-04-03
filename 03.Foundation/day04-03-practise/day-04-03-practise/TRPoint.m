//
//  TRPoint.m
//  day-04-03-practise
//
//  Created by Patrick Yu on 6/22/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRPoint.h"

@implementation TRPoint
-(id)initWithX:(NSInteger)x andY:(NSInteger)y
{
	if (self = [super init]) {
		self.x = x;
		self.y = y;
	}
	return self;
}

-(NSString *)description
{
	return [NSString stringWithFormat:@"x:%ld, y:%ld",self.x,self.y];
}

-(BOOL)isEqual:(id)object
{
	BOOL xIsEqual = self.x == ((TRPoint *)object).x;
	BOOL yIsEqual = self.y == ((TRPoint *)object).y;
	if (self == object ) {
		return YES;
	}else if (xIsEqual && yIsEqual){
		return YES;
	}
	return NO;
}
@end
