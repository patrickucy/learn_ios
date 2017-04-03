//
//  TRSamsung.h
//  Demo3_DIP
//
//  Created by Patrick Yu on 6/23/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRMainboardProtocol.h"

//#11. then this samsung RAM also needs to conform the TRMainboardProtocol
@interface TRSamsung : NSObject <TRMainboardProtocol>
-(void)run;
@end
