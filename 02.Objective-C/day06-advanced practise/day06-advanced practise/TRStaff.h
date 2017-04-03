//
//  TRStaff.h
//  day06-advanced practise
//
//  Created by Patrick Yu on 6/15/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TREmployee.h"

@interface TRStaff : TREmployee
-(id)initWithName:(NSString *)name andJob:(NSString *)job andSalary:(double)salary;
+(id)staffWithName:(NSString *)name andJob:(NSString *)job andSalary:(double)salary;
@end
