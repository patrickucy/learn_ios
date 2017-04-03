//
//  TRCircle.h
//  day06-advanced practise
//
//  Created by Patrick Yu on 6/15/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRShape.h"

@interface TRCircle : TRShape

@property (nonatomic) double radius;
-(id)initWithRadius:(double)radius;
+(id)circleWithRadius:(double)radius;

@end
