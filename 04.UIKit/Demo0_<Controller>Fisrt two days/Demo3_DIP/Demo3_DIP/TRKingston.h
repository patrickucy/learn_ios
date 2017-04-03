//
//  TRKingston.h
//  Demo3_DIP
//
//  Created by Patrick Yu on 6/23/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRMainboardProtocol.h"

//#10. then you need your TRKingston to conform that protocol and implemete a run method. ->//  TRSamsung.h

@interface TRKingston : NSObject <TRMainboardProtocol>
-(void)run;
@end
