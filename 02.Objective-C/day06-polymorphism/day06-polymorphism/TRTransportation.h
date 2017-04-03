//
//  TRTransportation.h
//  day06-polymorphism
//
//  Created by Patrick Yu on 6/15/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRTransportation : NSObject
-(void)print;
//根据num创建相应地交通工具
+(TRTransportation *)transportationByNum:(int)num;
@end
