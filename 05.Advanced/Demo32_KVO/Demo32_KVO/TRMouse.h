//
//  TRMouse.h
//  Demo32_KVO
//
//  Created by Patrick Yu on 8/26/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRMouse : NSObject
@property (nonatomic)int age;
@property (nonatomic,weak) id delegate;
@end
