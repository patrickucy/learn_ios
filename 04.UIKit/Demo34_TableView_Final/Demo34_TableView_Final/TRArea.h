//
//  TRArea.h
//  Demo34_TableView_Final
//
//  Created by Patrick Yu on 7/2/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRArea : NSObject
@property (nonatomic,copy) NSString *name;
@property (nonatomic,strong) NSArray *subAreas;

+(TRArea *)china;
@end
