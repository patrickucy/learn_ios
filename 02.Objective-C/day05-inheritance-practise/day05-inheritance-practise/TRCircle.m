//
//  TRCircle.m
//  day05-inheritance-practise
//
//  Created by Patrick Yu on 6/12/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRCircle.h"

@implementation TRCircle

-(id)initWithRadius:(double)radius
{
	if (self = [super init]) {
		_radius = radius;
	}
	return self;
}

+(id)circleWithRadius:(double)radius
{
	return [[TRCircle alloc] initWithRadius:radius];
}

-(double)calculateArea
{
	return  3.14 * self.radius * _radius;
}

-(double)calculatePerimeter
{
	return 2 * 3.14 * self.radius;
}

-(void)showAreaAndPerimeter
{
	NSLog(@"circle area:%f perimeter: %f",self.area,self.perimeter);
}
@end
