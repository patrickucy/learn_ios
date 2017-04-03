//
//  TRDrawView.m
//  Demo48_BezierPath_Arc
//
//  Created by Patrick Yu on 7/30/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRDrawView.h"

@implementation TRDrawView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGContextSaveGState(context);
	UIBezierPath *path = [UIBezierPath bezierPath];
	[path moveToPoint:CGPointMake(160, 200)];
	[path addLineToPoint:CGPointMake(260, 200)];
	[path addArcWithCenter:CGPointMake(160, 200)
					radius:100
				startAngle:0 //0永远在圆心的右边
				  endAngle:M_PI_2
				 clockwise:YES];
	[[UIColor redColor] setStroke];
	[[UIColor greenColor] setFill];
	[path closePath];
	path.lineWidth = 6;
	[path stroke];
	[path fill];
	
	CGContextSaveGState(context);
}


@end
