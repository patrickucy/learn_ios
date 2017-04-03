//
//  TREmployee.h
//  day06-advanced practise
//
//  Created by Patrick Yu on 6/15/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TREmployee : NSObject
@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *job;
@property (nonatomic,assign) double salary;
-(void)showInfo;
@end
