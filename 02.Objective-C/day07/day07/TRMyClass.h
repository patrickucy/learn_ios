//
//  TRMyClass.h
//  day07
//
//  Created by Patrick Yu on 6/16/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRProtocol1.h"
#import "TRProtocol2.h"

@interface TRMyClass : NSObject <TRProtocol1,TRProtocol2>
-(void)method1;
-(void)method2;
@end
