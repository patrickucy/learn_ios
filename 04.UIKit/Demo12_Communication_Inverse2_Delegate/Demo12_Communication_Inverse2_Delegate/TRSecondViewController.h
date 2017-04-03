//
//  TRSecondViewController.h
//  Demo12_Communication_Inverse2_Delegate
//
//  Created by Patrick Yu on 6/24/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <UIKit/UIKit.h>
//因为你实现了 delegate 连这个头文件都可以不要了,这样整个 MVC2就完全没有 MVC1的痕迹了,也就是说完全不需要依赖 MVC1 而独立运行机制了
//#import "TRViewController.h"

//#9(动刀2.2) 约束一系列行为
@class TRSecondViewController;
@protocol TRSecondDelegate <NSObject> //这个 protocol 在本类编译之前,所以你要声明一下你需要的类

-(void)secondViewController:(TRSecondViewController*)secondViewController
			  updateMessage:(NSString*)message;

@end

@interface TRSecondViewController : UIViewController
// @property (weak,nonatomic) TRViewController *sourceViewController;//#1(改动) 需要返回数据的对象被写死了!!!

//#2(动刀1.1) 改成动态类型,这样任何对象都可以赋值到这个属性上了~
//@property (weak,nonatomic) id sourceViewController;
//#8(动刀2.1) 定义了协议,所以这个 source 不再是以前的意思了,就变成了 delegate
@property (nonatomic,weak) id<TRSecondDelegate> delegate;
@end

