//
//  TRFile.h
//  Demo40_Client
//
//  Created by Patrick Yu on 8/29/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRFile : NSObject <NSCoding>
@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *path;
@property (nonatomic)	long long length;

@end
