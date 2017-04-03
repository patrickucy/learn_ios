//
//  TRPerson.h
//  day01-1
//
//  Created by Patrick Yu on 6/17/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRBook.h"

@interface TRPerson : NSObject <NSCopying>
@property (nonatomic,strong) NSString *name;
@property (nonatomic,assign) int age;
@property (nonatomic,copy) TRBook *book;
-(id)initWithName:(NSString *)name andAge:(int)age;
-(void)showInfo;
@end
