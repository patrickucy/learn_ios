//
//  TRShape.m
//  day06-advanced practise
//
//  Created by Patrick Yu on 6/15/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRShape.h"
#import "TRCircle.h"
#import "TRRectangle.h"
#import "TRSquare.h"

@implementation TRShape

+(TRShape *)shapeByNumber:(int)number{
	enum{circle,rectangle,square};
	switch (number) {
		case circle:
			return [[TRCircle alloc] init];
			
		case rectangle:
			return [[TRRectangle alloc] init];
			
		case square:
			return [[TRSquare alloc] init];
			
		default:
			return [[TRShape alloc] init];
			break;
	}
}

-(double)calculateArea{
	NSLog(@"shape show area");
	return 0;
}

-(double)calculatePerimeter{
	NSLog(@"shape show perimenter");
	return 0;
}

-(void)showAreaAndPerimeter{
	NSLog(@"shape area: perimeter:");
}
@end
