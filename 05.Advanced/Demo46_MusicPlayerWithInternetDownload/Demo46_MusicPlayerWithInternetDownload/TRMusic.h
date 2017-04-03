//
//  TRMusic.h
//  Demo46_MusicPlayerWithInternetDownload
//
//  Created by Yu on 9/5/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRMusic : NSObject
@property (nonatomic,copy) NSString *encodePath;
@property (nonatomic,copy) NSString *decodePath;
@property (nonatomic,copy) NSString *fullPath;
@property (nonatomic,copy) NSString *lrcid;
@property (nonatomic,copy) NSString *lrcPath;
@end
