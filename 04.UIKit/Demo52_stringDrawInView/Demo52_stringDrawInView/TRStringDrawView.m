//
//  TRStringDrawView.m
//  Demo52_stringDrawInView
//
//  Created by Patrick Yu on 7/31/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRStringDrawView.h"

@implementation TRStringDrawView

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
	
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= __IPHONE_7_0 //理论上是可以成功的,可能需要安装到设备上才能测试成功
	
	NSString *message = @"hello okokok,....,hahaha,hehehe";
	[message drawAtPoint:CGPointMake(10, 20)
		  withAttributes:@{
						   NSFontAttributeName:[UIFont boldSystemFontOfSize:20],
						   NSForegroundColorAttributeName:[UIColor redColor]
						   }];
	
	[message drawInRect:CGRectMake(20, 50, 260, 200)
		 withAttributes:@{
						  NSFontAttributeName:[UIFont boldSystemFontOfSize:20],
						  NSForegroundColorAttributeName:[UIColor redColor],
						  }];
#endif
	
}


@end
