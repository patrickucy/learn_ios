//
//  TRRectangle.m
//  day05-inheritance-practise
//
//  Created by Patrick Yu on 6/12/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRRectangle.h"

@implementation TRRectangle
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

