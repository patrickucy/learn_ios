//
//  TRDrawView.m
//  Demo47_BezierPath
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
	//1.画布
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGContextSaveGState(context);
	//2.路径
	UIBezierPath *path = [UIBezierPath bezierPath]; // 因为这个已经是框架的类了,他就会自动创建画布
	[path moveToPoint:CGPointMake(20, 20)];
	[path addLineToPoint:CGPointMake(self.bounds.size.width - 20, self.bounds.size.height - 20)];
	[path addLineToPoint:CGPointMake(20, self.bounds.size.height - 20)];
	//[path closePath];
	path.lineWidth = 6;
	path.lineJoinStyle = kCGLineJoinRound;
	path.lineCapStyle = kCGLineCapRound;

	//3.调色
	[[UIColor redColor] setStroke];
	[[UIColor greenColor] setFill];
	//4.着色
	[path stroke];
	[path fill];
	CGContextRestoreGState(context);//因为 setStroke 实际上设置的是一个全局变量
}


@end
