//
//  TRShape.h
//  day05-inheritance-practise
//
//  Created by Patrick Yu on 6/12/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRShape : NSObject
@property (nonatomic) double perimeter;
@property (nonatomic) double area;
-(double)calculatePerimeter;
-(double)calculateArea;
-(void)showAreaAndPerimeter;
@end
