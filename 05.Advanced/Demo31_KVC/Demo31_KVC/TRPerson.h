//
//  TRPerson.h
//  Demo31_KVC
//
//  Created by Patrick Yu on 8/25/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRPerson : NSObject
@property (nonatomic,strong) NSString *name;
@property (nonatomic) int age;
@property (nonatomic,strong) TRPerson *father;
@end
