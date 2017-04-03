//
//  TRDrawView.m
//  Demo46_DrawView
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
	[super drawRect:rect];
	// Drawing code
	//1.准备画布
	CGContextRef context = UIGraphicsGetCurrentContext();
	//2.准备路径
	CGContextMoveToPoint(context, 10, 10);
	CGContextAddLineToPoint(context, 110, 110);
	CGContextAddLineToPoint(context, 10, 110);
	CGContextAddLineToPoint(context, 10, 10);
	//3.调色
	CGContextSetRGBFillColor(context, 1.0, 0.0, 0.0, 1.0);
	CGContextSetRGBStrokeColor(context, 0.0, 1.0, 0.0, 1.0);
	//4.着色
	CGContextDrawPath(context, kCGPathFillStroke);
	
}


@end
