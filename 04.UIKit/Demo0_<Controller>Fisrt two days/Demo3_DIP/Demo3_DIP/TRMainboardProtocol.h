//
//  TRMainboardProtocol.h
//  Demo3_DIP
//
//  Created by Patrick Yu on 6/23/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

//#9. then you can define yourself a class that requires protocol!!! By the way, this is a protocol for mainboard,which means the mainboard itself doesn't need to conform this protocol, but other parts that wants to interact with mainboard have to conform this protocol ->//  TRKingston.h
@protocol TRMainboardProtocol <NSObject>

-(void)run;

@end

