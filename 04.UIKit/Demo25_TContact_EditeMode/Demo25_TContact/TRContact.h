//
//  TRContact.h
//  Demo22_Practise1
//
//  Created by Patrick Yu on 6/29/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRContact : NSObject
@property (nonatomic,copy) NSString *name;
@property (nonatomic) NSInteger	age;
@property (nonatomic,copy) NSString *phoneNumber;

+(NSMutableArray *)demoData;

@end
