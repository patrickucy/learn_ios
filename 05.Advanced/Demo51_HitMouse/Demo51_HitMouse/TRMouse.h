//
//  TRMouse.h
//  Demo51_HitMouse
//
//  Created by Yu on 10/7/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TRViewController.h"

@interface TRMouse : UIButton
//其实这里更应该用KVO,而不是弱引用,因为mouse是model层的,当然现在是简单项目,一对一的传值这样子做也是没有问题的,但是这样子做了发现后面的代码会必须在model层直接操作view层,这是MVC的大忌!!!所以下面这种方法是绝对的错误的!!!!
//@property (nonatomic,weak) TRViewController *delegate;

//应该用KVO来解决这种问题
@property (nonatomic) BOOL isDead;
@end
