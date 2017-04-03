//
//  TRMainboard.m
//  Demo3_DIP
//
//  Created by Patrick Yu on 6/23/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRMainboard.h"

@implementation TRMainboard
-(void)work
{

	//#8. you are calling this run message! what if you change your TRKingston run method to run222,the this message wil be calling wrongly!!!!! at this point protocol is the solution for this situation ->//  TRMainboardProtocol.h

	[self.memory run];
}
@end
