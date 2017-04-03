//
//  TRShape.h
//  day06-advanced practise
//
//  Created by Patrick Yu on 6/15/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface TRShape : NSObject
@property (nonatomic) double perimeter;
@property (nonatomic) double area;
+(TRShape *)shapeByNumber:(int)number;
-(double)calculatePerimeter;
-(double)calculateArea;
-(void)showAreaAndPerimeter;
@end
