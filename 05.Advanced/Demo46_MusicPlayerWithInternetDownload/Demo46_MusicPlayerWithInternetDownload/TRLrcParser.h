//
//  TRUtils.h
//  Demo46_MusicPlayerWithInternetDownload
//
//  Created by Yu on 9/9/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRLrcParser : NSObject
+(NSMutableDictionary *)parseLrc:(NSString *)lrcString;

@end
