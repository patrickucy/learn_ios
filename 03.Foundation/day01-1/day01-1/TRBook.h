//
//  TRBook.h
//  day01-1
//
//  Created by Patrick Yu on 6/17/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRBook : NSObject <NSCopying>
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) int price;
@end
