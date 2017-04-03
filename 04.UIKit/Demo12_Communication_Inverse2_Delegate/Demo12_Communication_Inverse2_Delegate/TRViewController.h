//
//  TRViewController.h
//  Demo12_Communication_Inverse2_Delegate
//
//  Created by Patrick Yu on 6/25/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TRViewController : UIViewController
//#7(动刀1.4) 因为 C1已经不在需要属性传值了,而是消息传值,所以这里也就不在需要这个属性了
//	@property (nonatomic,copy) NSString *message;
//	因为你已经通过委托的方式写了规定名称的方法,也就是说这个原来的方法也就没用了
//-(void)updateMessage:(NSString *)message;

@end
