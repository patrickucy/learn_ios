//
//  TRComputer3.h
//  day06-computer and cpu
//
//  Created by Patrick Yu on 6/13/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRCpu3.h"

@interface TRComputer3 : NSObject
@property (nonatomic,retain) TRCpu3* cpu; //缺点是出生的时候没有cpu
-(void)powerOn;
-(void)start;
@end
