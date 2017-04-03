//
//  TRStudent.h
//  day04
//
//  Created by Patrick Yu on 6/11/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRStudent : NSObject
@property int age;
-(void)test;
+(void)test2;
+(id)student; //工厂方法
-(id)initWithAge:(int)age;
+(id)studentWithAge:(int)age;	//工厂方法的初始化方法
@end
