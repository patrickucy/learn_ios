//
//  TRArea.h
//  day03-practise
//
//  Created by Patrick Yu on 6/21/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRArea : NSObject
@property (nonatomic,strong) NSString *name;
@property (nonatomic) NSInteger population;
-(id)initWithName:(NSString *)name andPopulation:(NSInteger)population;
@end
