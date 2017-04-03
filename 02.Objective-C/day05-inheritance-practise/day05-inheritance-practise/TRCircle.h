//
//  TRCircle.h
//  day05-inheritance-practise
//
//  Created by Patrick Yu on 6/12/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRShape.h"

@interface TRCircle : TRShape
@property (nonatomic) double radius;
-(id)initWithRadius:(double)radius;
+(id)circleWithRadius:(double)radius;

@end
