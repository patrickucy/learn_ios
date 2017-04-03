//
//  TRUtils.m
//  Demo28_MusicList
//
//  Created by Patrick Yu on 8/21/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRUtils.h"

@implementation TRUtils
+(NSMutableArray *)getMusicPathsByPath:(NSString *)path
{
	NSFileManager *fileManager = [NSFileManager defaultManager];
	NSArray *fileNames = [fileManager contentsOfDirectoryAtPath:path error:nil];
	NSMutableArray *musicPaths = [NSMutableArray array];
	for (NSString *fileName in fileNames) {
		if ([fileName hasSuffix:@"mp3"]) {
			NSString *musicPath = [path stringByAppendingPathComponent:fileName];
			[musicPaths addObject:musicPath];
			
		}
	}
	return musicPaths;
}


//网上一搜一大把,工作的时候用的不多,而且面试不会问基本上
+(UIImage *)getArtWorkByPath:(NSString *)path
{
	NSURL *fileURL = [NSURL fileURLWithPath:path];
	AVURLAsset *mp3Asset = [AVURLAsset URLAssetWithURL:fileURL options:nil];
	for (NSString *format in [mp3Asset availableMetadataFormats]) {
		for (AVMetadataItem *metadataItem in [mp3Asset metadataForFormat:format]) {
			if ([metadataItem.commonKey isEqualToString:@"artwork"]) {
				NSData *data = [(NSDictionary *)metadataItem.value objectForKey:@"data"];
				return [UIImage imageWithData:data];
				break;
			}
		}
	}
	return nil;
}
@end
