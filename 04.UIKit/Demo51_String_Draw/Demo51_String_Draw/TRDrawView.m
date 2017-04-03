//
//  TRDrawView.m
//  Demo51_String_Draw
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
	
	//=======指定显示位置=======
	NSString *message1 = @"message1,I am a message, fjflksajflkasjdflkajsdfjasdjflkdsjkfljsadfjksadhfkjaldfhkalhdfjkshaflkshdflkhaskjdfhskadlfhlksjadhfklashdfhkasdhfkaslhflakhkasd..........";
	[[UIColor redColor] setFill];
	[message1 drawAtPoint:CGPointMake(20, 20) withFont:[UIFont systemFontOfSize:20]];
	//========指定显示区域========
	NSString *message2 = @"message2,hello world,foisajodjfoiasjdfoijsoidjfoidjoisajfoidsajfiosdajfoisadjofjasodifjiosdjfiosajf";
	[[UIColor greenColor] setFill];
	[message2 drawInRect:CGRectMake(20, 50, 260, 400) withFont:[UIFont systemFontOfSize:20]];
	//========计算显示区域========
	NSString *message3 = @"message3,fjasdjfodsjfoasjofidjgoiasjdigojdisojgioasdjgiosdgjdsagioasdjgiosdjgoiasdjgiosdj giosdaj";
	[message3 sizeWithFont:[UIFont systemFontOfSize:30] constrainedToSize:CGSizeMake(260, 2000)];
	[message3 drawInRect:CGRectMake(20, 200, 260, 2000) withFont:[UIFont systemFontOfSize:20]];
	//=====
	
	
	CGContextRestoreGState(context);
}


@end
