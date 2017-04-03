//
//  TRUtils.m
//  Demo46_MusicPlayerWithInternetDownload
//
//  Created by Yu on 9/9/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRLrcParser.h"

@implementation TRLrcParser
+(NSMutableDictionary *)parseLrc:(NSString *)lrcString
{
	NSMutableDictionary *lrcDictionary = [NSMutableDictionary dictionary];
	NSArray *lines = [lrcString componentsSeparatedByString:@"\n"];
	for (NSString *line in lines) {
		if ([line hasPrefix:@"[0"]) {
			NSArray *timeAndTextArray = [line componentsSeparatedByString:@"]"];
			NSString *lrcText = [timeAndTextArray lastObject];
			for (int i=0; i<timeAndTextArray.count-1; i++) {
				NSString *timeString = [timeAndTextArray[i] substringFromIndex:1];
				NSArray *times = [timeString componentsSeparatedByString:@":"];
				float time = [times[0] intValue] *60 +[times[1] floatValue];
				//key只要符合NSCopying就可以当key
				[lrcDictionary setObject:lrcText forKey:[NSNumber numberWithFloat:time]];
			}
		}
	}
	return lrcDictionary;
}
@end
