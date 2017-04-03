//
//  TRUtils.h
//  Demo40_Client
//
//  Created by Patrick Yu on 8/29/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRFile.h"

@interface TRUtils : NSObject
+(NSMutableArray *)getFilesByDirectoryPath:(NSString *)path;
+(NSMutableData *)getDataByHeaderString:(NSString *)header;
@end
