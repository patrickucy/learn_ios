//
//  TRUtils.m
//  Demo37_PhotoRiver
//
//  Created by Patrick Yu on 8/28/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRUtils.h"

@implementation TRUtils
+(NSMutableArray *)getImagePathsByPath:(NSString *)path
{
	NSFileManager *fileManager = [NSFileManager defaultManager];
	NSArray *fileNames = [fileManager contentsOfDirectoryAtPath:path error:nil];
	NSMutableArray *imagePaths = [NSMutableArray array];
	for (NSString *fileName in fileNames) {
		if ([fileName hasSuffix:@"jpg"]) {
			NSString *filePath = [path stringByAppendingPathComponent:fileName];
			[imagePaths addObject:filePath];
		}
	}
	return imagePaths;
}
@end
