//
//  TRCpu.h
//  day04-MRC-Practise
//
//  Created by Patrick Yu on 6/12/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRCpu : NSObject
@property (nonatomic, assign)int frequency;
-(id)initWithFrequency:(int)frequency;
-(id)cpuWithFrequency:(int)frequency;
@end
