//
//  TRPoint.m
//  Demo69_DrawPad
//
//  Created by Patrick Yu on 8/6/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRPoint.h"

@implementation TRPoint
+(instancetype)pointWithCGPoint:(CGPoint)point
{
	TRPoint *p = [[TRPoint alloc] init];
	p.x = point.x;
	p.y = point.y;
	return p;
}

-(CGPoint)cgPoint
{
	return CGPointMake(self.x, self.y);
}
@end
