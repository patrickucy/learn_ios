//
//  TRSquare.m
//  day05-inheritance-practise
//
//  Created by Patrick Yu on 6/12/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRSquare.h"

@implementation TRSquare
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
