//
//  TRMyView.m
//  Demo69_DrawPad
//
//  Created by Patrick Yu on 8/6/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRMyView.h"
#import "TRPoint.h"

@interface TRMyView ()
@property (nonatomic,strong) NSMutableArray *points;
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
	CGContextRef context = UIGraphicsGetCurrentContext();//画板
	CGContextSaveGState(context);
	
	UIBezierPath *path = [[UIBezierPath alloc]init];
	if (self.points.count > 0) {
		CGPoint startPoint = [self.points[0] cgPoint];
		[path moveToPoint:startPoint];
		for (int i =1 ; i < self.points.count; i++) {
			[path addLineToPoint:[self.points[i] cgPoint]];
		}
		path.lineWidth = 4;
		path.lineJoinStyle = kCGLineJoinRound;
		path.lineCapStyle = kCGLineCapRound;
		[[UIColor blueColor] setStroke];
		[path stroke];
		
	}
	CGContextRestoreGState(context);
}

-(NSMutableArray *)points
{
	if (!_points) {
		_points = [[NSMutableArray alloc] init];
	}
	return _points;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	UITouch *touch = [touches anyObject];
	CGPoint currentPoint = [touch locationInView:self];
	TRPoint *pointObj = [TRPoint pointWithCGPoint:currentPoint];
	[self.points addObject:pointObj];
	[self setNeedsDisplay];
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
	UITouch *touch = [touches anyObject];
	CGPoint currentPoint = [touch locationInView:self];
	TRPoint *pointObj = [TRPoint pointWithCGPoint:currentPoint];
	[self.points addObject:pointObj];
	[self setNeedsDisplay];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
	[self.points removeAllObjects];
}


@end
