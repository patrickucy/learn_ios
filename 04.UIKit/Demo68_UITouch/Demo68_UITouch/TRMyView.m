//
//  TRMyView.m
//  Demo68_UITouch
//
//  Created by Patrick Yu on 8/5/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRMyView.h"

@interface TRMyView ()
@property (nonatomic) CGPoint startPoint;
@property (nonatomic) CGPoint endPoint;
@property (nonatomic, strong) UIView *selectView;
@property (nonatomic) CGRect rect;
@end

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
	/*
	 //老师的方法
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGContextSaveGState(context);
	UIBezierPath *path = [UIBezierPath bezierPathWithRect:self.rect];
	[[UIColor blackColor] setStroke];
	[[UIColor lightGrayColor] setFill];
	[path stroke];
	[path fill];
	CGContextRestoreGState(context);
	*/
	
	
	//我自己的方法
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGContextSaveGState(context);
	
	self.selectView.frame = CGRectMake(self.startPoint.x, self.startPoint.y, self.endPoint.x - self.startPoint.x, self.endPoint.y - self.startPoint.y);
	self.selectView.backgroundColor = [UIColor grayColor];
	[self addSubview:self.selectView];
	 CGContextRestoreGState(context);
	
}

-(UIView *)selectView
{
	if (!_selectView) {
		_selectView = [[UIView alloc] init];
	}
	return _selectView;
}

// touches 中的是 N 个 UITouch 对象,因为支持多点触控
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	
	NSLog(@"touchesBegan");
	
	/*
	//老师的方法
	UITouch *touch = [touches anyObject];
	self.startPoint = [touch locationInView:self];
	*/
	
	
	//我自己的方法
	UITouch *touch = [touches anyObject];
	CGPoint point = [touch locationInView:self];
	NSLog(@"begin = x:%.2f,y:%.2f",point.x,point.y);//在这个 view 的属性里面要拔 MultiTouch 打开就可以支持多点触控了
	self.startPoint = point;
	
	

}



-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
	NSLog(@"touchesMoved");//只要你不放手,系统就会不停的调用这个方法

	/*
	 //老师的方法
	UITouch *touch = [touches anyObject];
	CGPoint point = [touch locationInView:self];
	CGFloat minX = MIN(self.startPoint.x, point.x);
	CGFloat minY = MIN(self.startPoint.y, point.y);
	CGFloat maxX = MAX(self.startPoint.x, point.x);
	CGFloat maxY = MAX(self.startPoint.y, point.y);
	self.rect = CGRectMake(minX, minY, maxX - minX, maxY - minY);
	[self setNeedsDisplay];
	 */
	
	
	 //我自己的方法
	UITouch *touch = [touches anyObject];
	CGPoint point = [touch locationInView:self];
	NSLog(@"begin = x:%.2f,y:%.2f",point.x,point.y);//在这个 view 的属性里面要拔 MultiTouch 打开就可以支持多点触控了
	self.endPoint = point;
	[self setNeedsDisplay];
	 
}


-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
	NSLog(@"touchesEnded");
	
	/*
	 //老师的方法
	self.rect = CGRectZero;
	[self setNeedsDisplay];//因为 rect 是结构体,当函数执行结束的时候会自动回收
	*/
	
	
	
	//我自己的方法
	self.selectView = nil;//不知道为什么不会消失??
	
	[self setNeedsDisplay];
	
}


@end
