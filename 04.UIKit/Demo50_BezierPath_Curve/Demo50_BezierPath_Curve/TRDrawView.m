//
//  TRDrawView.m
//  Demo50_BezierPath_Curve
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
	
	[path moveToPoint:CGPointMake(50, 20)];
	[path addCurveToPoint:CGPointMake(20, 120)
			controlPoint1:CGPointMake(20, 20)
			controlPoint2:CGPointMake(50, 120)];//bezier 控制点的 与它起始点如果连接起来实际上是切线!!!!!
	[path addCurveToPoint:CGPointMake(50, 240)
			controlPoint1:CGPointMake(50, 120)
			controlPoint2:CGPointMake(20, 240)];
	
	path.lineWidth = 4;
	path.lineCapStyle = kCGLineCapRound;
	[[UIColor redColor] setStroke];
	[path stroke];

	CGContextRestoreGState(context);
}


@end
