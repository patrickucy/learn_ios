//
//  TRSquare.m
//  day06-advanced practise
//
//  Created by Patrick Yu on 6/15/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRSquare.h"

@implementation TRSquare
-(id)initWithSide:(double)side
{
	if (self = [super init]) {
		self.side = side;
	}
	return self	;
}

+(id)squareWithSide:(double) side
{
	return [[TRSquare alloc] initWithSide:side];
}

-(double)calculateArea
{
	return self.side * self.side;
}

-(double)calculatePerimeter
{
	return self.side * 4;
}

-(void)showAreaAndPerimeter
{
	NSLog(@"square area: %f perimeter: %f",self.area,self.perimeter);
}
@end
