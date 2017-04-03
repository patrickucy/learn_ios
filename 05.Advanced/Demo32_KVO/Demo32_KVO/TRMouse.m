//
//  TRMouse.m
//  Demo32_KVO
//
//  Created by Patrick Yu on 8/26/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRMouse.h"
#import "TRViewController.h"

@implementation TRMouse
- (instancetype)init
{
    self = [super init];
    if (self) {
        [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timeAction) userInfo:nil repeats:YES];
    }
    return self;
}

//-(void)updateLabel:(int)age
//{
//	((TRViewController *)self.delegate).ageLabel.text = [NSString stringWithFormat:@"%d",age];
//
//}

-(void)timeAction
{
	self.age ++;
	//1.虽然这个方式是没有问题的,但是是违反 MVC 的设计模式的!!!!因为这个类是 M 层!!!!不直接操作 Controller里面具体的 view 控件
//	((TRViewController *)self.delegate).ageLabel.text = [NSString stringWithFormat:@"%d",self.age];
	
	//2.这个是用 delegate 的形式,间接传值,其实这里就是以协议的形式在传值!!只是没声明协议
//	[self.delegate updateLabel:self.age];
	
	//3.就是在 Controller 里面直接让对象自己监听自己的属性变化,然后调用方法来进行改变自己的 UI, 这样 model 层就变得更独立了
}
@end
