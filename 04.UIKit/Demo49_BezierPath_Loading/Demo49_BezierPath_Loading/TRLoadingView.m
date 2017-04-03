//
//  TRLoadingView.m
//  Demo49_BezierPath_Loading
//
//  Created by Patrick Yu on 7/30/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRLoadingView.h"

@implementation TRLoadingView

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
	CGPoint center = CGPointMake(self.bounds.size.width/2.0, self.bounds.size.height/2.0);
	CGFloat radius = 20;
	CGFloat lineWidth = 6;
	[path addArcWithCenter:center
					radius:radius
				startAngle:M_PI * 3/2
				  endAngle:M_PI * 3/2 + M_PI * 2 * self.value
				 clockwise:YES];
	path.lineWidth = lineWidth;
	path.lineCapStyle = kCGLineCapRound;
	[[UIColor blackColor] setStroke];
	[path stroke];
	
	CGContextRestoreGState(context);
}



@end
