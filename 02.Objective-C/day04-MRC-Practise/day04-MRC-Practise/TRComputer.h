//
//  TRComputer.h
//  day04-MRC-Practise
//
//  Created by Patrick Yu on 6/12/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRCpu.h"
#import "TRMemory.h"

@interface TRComputer : NSObject
@property(retain) TRCpu* cpu;
@property (nonatomic,retain) TRMemory* memory;
-(void)playGame;
@end
