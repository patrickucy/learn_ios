//
//  TRArea.h
//  Demo19_TableView_Array_Object
//
//  Created by Patrick Yu on 6/28/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRArea : NSObject
@property (nonatomic,copy) NSString *name;
@property (nonatomic) NSInteger population;

+(NSArray *)china;
@end
