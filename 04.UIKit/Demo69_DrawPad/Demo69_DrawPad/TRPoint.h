//
//  TRPoint.h
//  Demo69_DrawPad
//
//  Created by Patrick Yu on 8/6/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRPoint : NSObject
@property (nonatomic) CGFloat x;
@property (nonatomic) CGFloat y;
+(instancetype)pointWithCGPoint:(CGPoint)point;
-(CGPoint)cgPoint;
@end
