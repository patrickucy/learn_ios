//
//  TRDrawView.m
//  Demo37_PhotoRiver
//
//  Created by Patrick Yu on 8/27/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRDrawView.h"

@implementation TRDrawView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		self.lines = [NSMutableArray array];
    }
    return self;
}

//这个方法才是从在storyboard里面创建的view中调用这个方法
- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
		self.lines = [NSMutableArray array];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGContextSetLineWidth(context, 2);
	CGContextSetRGBStrokeColor(context, 255, 255, 255, 1);
	
	//遍历每一条线
	for (NSMutableArray *line in self.lines) {
		//遍历线里面的每一个点
		for (int i = 0; i < line.count; i++) {
			CGPoint p = [line[i] CGPointValue];
			//如果是第一个点,就让画笔移动到这个位置
			if (i == 0) {
				CGContextMoveToPoint(context, p.x, p.y);
			}else {
				//如果不是第一个点让画笔画线到这个位置
				CGContextAddLineToPoint(context, p.x, p.y);
			}
		}
	}
		
	CGContextDrawPath(context, kCGPathStroke);
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	UITouch *touch = [touches anyObject];
	CGPoint p = [touch locationInView:self];
	self.points = [NSMutableArray array];
	[self.lines addObject:self.points];
	[self.points addObject:[NSValue valueWithCGPoint:p]];
	//界面刷新显示
	[self setNeedsDisplay];
	
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
	UITouch *touch = [touches anyObject];
	CGPoint p = [touch locationInView:self];
	[self.points addObject:[NSValue valueWithCGPoint:p]];
	//界面刷新显示,为了drawRect方法
	[self setNeedsDisplay];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
	
}



@end
