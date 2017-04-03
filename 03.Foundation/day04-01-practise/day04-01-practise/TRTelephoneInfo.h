//
//  TRTelephoneInfo.h
//  day04-01-practise
//
//  Created by Patrick Yu on 6/21/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRUserInfo.h"

@interface TRTelephoneInfo : NSObject
@property (nonatomic,copy) NSString *name;
@property (nonatomic,strong) NSMutableArray *userInfos;

-(void)addUserInfos:(TRUserInfo *)userInfo;
-(void)removeUserInfoByName:(NSString *)userInfoName;
-(void)lookUpUserInfo:(NSString *)userInfoName;
-(void)list;
-(void)sort;

@end
