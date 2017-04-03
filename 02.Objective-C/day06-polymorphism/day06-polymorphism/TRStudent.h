//
//  TRStudent.h
//  day06-polymorphism
//
//  Created by Patrick Yu on 6/15/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRTransportation.h"

@interface TRStudent : NSObject
@property (nonatomic,copy) NSString *name;
-(void)goToSchoolByTransportation:(TRTransportation*)transportation;
@end
