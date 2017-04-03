//
//  TRStudent.h
//  day01-1
//
//  Created by Patrick Yu on 6/17/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRStudent : NSObject <NSCopying>
@property (nonatomic, assign) int age;
//-(void)study;
-(id)initWithAge:(int)age;
@end
