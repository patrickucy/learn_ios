//
//  TRRectangle.h
//  day06-advanced practise
//
//  Created by Patrick Yu on 6/15/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRShape.h"

@interface TRRectangle : TRShape
@property (nonatomic) double width;
@property (nonatomic) double height;
-(id)initWithWidth:(double)width andHeight:(double)height;
+(id)rectangleWithWithd:(double)width andHeight:(double)height;
@end
