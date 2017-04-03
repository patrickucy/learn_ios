//
//  TRCountry.h
//  day03-practise
//
//  Created by Patrick Yu on 6/21/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRArea.h"

@interface TRCountry : NSObject
@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) NSMutableArray	*areas;
-(void)showAreas;
-(void)showArea:(NSString *)name;
@end
