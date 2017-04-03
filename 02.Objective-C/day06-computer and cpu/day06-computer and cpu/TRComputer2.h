//
//  TRComputer2.h
//  day06-computer and cpu
//
//  Created by Patrick Yu on 6/13/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRCpu2.h"

@interface TRComputer2 : NSObject
@property (nonatomic, retain) TRCpu2* cpu;

-(id)init;
-(void)powerOn;
-(void)start;

@end
