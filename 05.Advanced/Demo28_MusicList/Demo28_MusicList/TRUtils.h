//
//  TRUtils.h
//  Demo28_MusicList
//
//  Created by Patrick Yu on 8/21/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface TRUtils : NSObject
+(NSMutableArray *)getMusicPathsByPath:(NSString *)path;
+(UIImage *)getArtWorkByPath:(NSString *)path;
@end
