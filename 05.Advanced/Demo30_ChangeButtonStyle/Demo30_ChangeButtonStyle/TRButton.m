//
//  TRButton.m
//  Demo30_ChangeButtonStyle
//
//  Created by Patrick Yu on 8/25/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRButton.h"

@implementation TRButton
//当通过代码创建控件,并且调用 initWithFrame 的时候
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		[self initialize];
    }
    return self;
}
//当通过 storyboard 或者 xib 创建出来的控件, 调用此初始化方法
- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
		[self initialize];

    }
    return self;
}

//当通过代码创建控件并且调用 init 的时候
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self initialize];
    }
    return self;
}

-(void)initialize
{
	[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeStyle) name:@"changeStyle" object:nil];
}

-(void)changeStyle
{
	self.backgroundColor = [UIColor blueColor];
}

-(void)dealloc
{
	//上面添加了通知 observer, 是一定要删掉的*********************!!!!!!!!!!!!!!!!!!
	[[NSNotificationCenter defaultCenter] removeObserver:self];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
