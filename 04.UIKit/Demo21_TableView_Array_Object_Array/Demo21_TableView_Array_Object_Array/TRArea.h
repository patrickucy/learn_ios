//
//  TRArea.h
//  Demo21_TableView_Array_Object_Array
//
//  Created by Patrick Yu on 6/28/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRArea : NSObject
@property (nonatomic,copy) NSString *name;
@property (nonatomic,strong) NSArray *subareaNames;

+(NSArray *)china;

@end
