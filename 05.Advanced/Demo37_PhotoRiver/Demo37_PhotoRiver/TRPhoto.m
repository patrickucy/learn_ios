//
//  TRPhoto.m
//  Demo37_PhotoRiver
//
//  Created by Patrick Yu on 8/27/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRPhoto.h"


enum status{
	TRPhotoStatusNormal = 0,
	TRPhotoStatusBig = 1,
	TRPhotoStatusDraw = 2,
};

@implementation TRPhoto

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        //透明度, 大小, 速度
		float randomAlpha = (arc4random() % 9 + 2) * 0.1;
		float size = randomAlpha * 100;
		NSLog(@"%f",randomAlpha);
		self.frame = CGRectMake(-size, arc4random()%(int)(568-size*1.3), size, size * 1.3);
		self.speed = randomAlpha * 4;//注意这里的速度是我自己觉得4倍显示效果更好
		self.alpha = randomAlpha;
		
		self.drawView = [[TRDrawView alloc] initWithFrame:self.bounds];
		[self addSubview:self.drawView];
		self.drawView.userInteractionEnabled = NO;
		
		self.imageView = [[UIImageView alloc] initWithFrame:self.bounds];
		[self addSubview:self.imageView];
		
		[NSTimer scheduledTimerWithTimeInterval:1.0/30 target:self selector:@selector(moveAction) userInfo:nil repeats:YES];
		
		//添加边框
		self.layer.borderWidth = 3;
		self.layer.borderColor = [[UIColor whiteColor] CGColor];
		//添加单击手势
		UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction)];
		[self addGestureRecognizer:tapGestureRecognizer];
		//添加2点单击手势
		UITapGestureRecognizer *doubleTapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(doubleTapAction)];
		//两点触控,zoom in的那种
		[doubleTapGestureRecognizer setNumberOfTouchesRequired:2];
		[self addGestureRecognizer:doubleTapGestureRecognizer];
		
		
    }
    return self;
}

-(void)moveAction
{
	self.center = CGPointMake(self.center.x + self.speed, self.center.y);
	//如果有图片移除屏幕,从屏幕左边再进来
	if (self.center.x > 320+self.bounds.size.width/2) {
		self.center = CGPointMake(-self.bounds.size.width/2, arc4random() % (int)(568-self.bounds.size.height) + self.bounds.size.height/2);
		//换图片
		[((TRViewController *)self.delegate) changeImageForPhoto:self];
	}
	
}
-(void)tapAction
{
	if (self.status == TRPhotoStatusNormal) {
		//把原来的状态保存
		self.oldAlpha = self.alpha;
		self.oldFrame = self.frame;
		self.status = TRPhotoStatusBig;//放大状态
		
		[self.superview bringSubviewToFront:self];
		[UIView animateWithDuration:.5 animations:^{
			self.frame = CGRectMake(20, 20, 280, 528);
			self.imageView.frame = self.bounds;
			self.drawView.frame = self.bounds;
			
			self.alpha = 1;
			self.speed = 0;
		}];
	}else if (self.status == TRPhotoStatusBig){//还原
		self.status = TRPhotoStatusNormal;
		[UIView animateWithDuration:.5 animations:^{
			self.frame = self.oldFrame;
			self.imageView.frame = self.bounds;
			self.drawView.frame = self.bounds;
			
			self.alpha = self.oldAlpha;
			self.speed = self.oldAlpha * 4;
		}];
	}
}


-(void)doubleTapAction
{
	if (self.status == TRPhotoStatusBig) {
		self.status = TRPhotoStatusDraw;
		self.drawView.userInteractionEnabled = YES;
	}else if (self.status == TRPhotoStatusDraw){
		self.status = TRPhotoStatusBig;
		self.drawView.userInteractionEnabled = NO;
	}
	//这里开始过渡动画
	//在过渡动画开始改变的地方添加动画
	CATransition *animation = [CATransition animation];
	animation.duration = .5;
	animation.type = @"oglFlip";
	animation.subtype = @"fromLeft";
	[self.layer addAnimation:animation forKey:nil];
	
	[self exchangeSubviewAtIndex:0 withSubviewAtIndex:1];

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
