//
//  TRPoint.h
//  day-04-03-practise
//
//  Created by Patrick Yu on 6/22/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRPoint : NSObject
@property (nonatomic) NSInteger x;
@property (nonatomic) NSInteger	y;
-(id)initWithX:(NSInteger)x andY:(NSInteger)y;
@end
