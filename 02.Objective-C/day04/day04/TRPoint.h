//
//  TRPoint.h
//  day04
//
//  Created by Patrick Yu on 6/11/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRPoint : NSObject
@property int x;
@property int y;


-(void)showXAndY;
-(int)getXValue;
-(int)getYValue;
-(id)init;
-(id)initWithX:(int)x andY:(int)y;
+(id)point;
+(id)pointWithX:(int)x andY:(int)y;

@end
