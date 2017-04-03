//
//  TRUserInfo.h
//  day04-01-practise
//
//  Created by Patrick Yu on 6/21/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRUserInfo : NSObject
@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *email;
@property (nonatomic,copy) NSString *telephone;
-(id)initWithName:(NSString *)name andEmail:(NSString *)email andTelephone:(NSString *)telephone;
-(void)print;
-(NSComparisonResult)compareUserInfoName:(TRUserInfo*)userInfo; // 比较方法，为了后期的数组排序

@end
