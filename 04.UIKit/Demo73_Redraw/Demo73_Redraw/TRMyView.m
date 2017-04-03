//
//  TRMyView.m
//  Demo73_Redraw
//
//  Created by Patrick Yu on 8/7/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRMyView.h"

@implementation TRMyView

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
	[path moveToPoint:CGPointMake(100, 100)];
	[path addLineToPoint:CGPointMake(100, 230)];
	[path addLineToPoint:CGPointMake(200, 100)];
	[path addLineToPoint:CGPointMake(100, 100)];
	[[UIColor redColor] setFill];
	[path fill];
	
	//正常来说要在 mode 里面选择 redraw 这样这个图片才会不至于布局改变而变形
	CGContextRestoreGState(context);
}


@end
