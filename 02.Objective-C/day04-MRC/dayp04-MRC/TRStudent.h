//
//  TRStudent.h
//  dayp04-MRC
//
//  Created by Patrick Yu on 6/11/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRBook.h"

@interface TRStudent : NSObject
@property TRBook* book;
-(void)study;
-(void)dealloc;
@end
