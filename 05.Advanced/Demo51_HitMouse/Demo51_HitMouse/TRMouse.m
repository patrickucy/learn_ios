//
//  TRMouse.m
//  Demo51_HitMouse
//
//  Created by Yu on 10/7/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRMouse.h"

@implementation TRMouse

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		self.backgroundColor = [UIColor redColor];
		[self addTarget:self action:@selector(clicked) forControlEvents:UIControlEventTouchUpInside];
		[self setTitle:@"3" forState:UIControlStateNormal];
		[NSThread detachNewThreadSelector:@selector(countDownAction) toTarget:self withObject:nil];
    }
    return self;
}

-(void)clicked
{
	[self removeFromSuperview];
	
	self.isDead = YES;
}

-(void)countDownAction
{
//	实际上就是手动写了一个timer
	for (int i = 2; i >= 0; i--) {
		[NSThread sleepForTimeInterval:.5];
		[self performSelectorOnMainThread:@selector(updateUI:) withObject:[NSNumber numberWithInt:i] waitUntilDone:NO];
	}
	[NSThread sleepForTimeInterval:0.1];
	if (self.superview) {
		self.isDead = NO;
		[self removeFromSuperview];
	}
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
	
}

-(void)updateUI:(NSNumber *)number
{
	int i = [number intValue];
	[self setTitle:[NSString stringWithFormat:@"%d",i] forState:UIControlStateNormal];
}

@end
