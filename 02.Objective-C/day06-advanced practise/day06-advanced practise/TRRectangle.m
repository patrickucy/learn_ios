//
//  TRRectangle.m
//  day06-advanced practise
//
//  Created by Patrick Yu on 6/15/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRRectangle.h"

@implementation TRRectangle

-(id)initWithWidth:(double)width andHeight:(double)height
{
	if (self = [super init]) {
		self.width = width;
		self.height = height;
	}
	return self;
}

+(id)rectangleWithWithd:(double)width andHeight:(double)height
{
	return [[TRRectangle alloc] initWithWidth:width andHeight:height];
}


-(double)calculateArea
{
	return self.width * self.height;
}

-(double)calculatePerimeter
{
	return 2*(self.width + self.height);
}

-(void)showAreaAndPerimeter
{
	NSLog(@"rectangle area:%f perimeter:%f",self.area,self.perimeter);
}
@end
