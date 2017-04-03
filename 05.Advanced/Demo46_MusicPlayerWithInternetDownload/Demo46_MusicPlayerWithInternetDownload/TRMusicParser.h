//
//  TRMusicParser.h
//  Demo46_MusicPlayerWithInternetDownload
//
//  Created by Yu on 9/5/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRMusic.h"

@interface TRMusicParser : NSObject <NSXMLParserDelegate>
@property (nonatomic,strong) TRMusic *music;
@property (nonatomic,copy) NSString *string;

-(TRMusic *)parseMusicInfoByXmlData:(NSData *)data;
@end
