//
//  TRUtils.m
//  Demo40_Client
//
//  Created by Patrick Yu on 8/29/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRUtils.h"

@implementation TRUtils
+(NSMutableArray *)getFilesByDirectoryPath:(NSString *)path
{
	NSFileManager *fileManager = [NSFileManager defaultManager];
	NSArray *fileNames = [fileManager contentsOfDirectoryAtPath:path error:nil];
	NSMutableArray *files = [NSMutableArray array];
	
	for (NSString *fileName in fileNames) {
		NSString *filePath = [path stringByAppendingPathComponent:fileName];
		TRFile *file = [[TRFile alloc] init];
		file.name = fileName;
		file.path = filePath;
		NSFileHandle *fileHandle = [NSFileHandle fileHandleForReadingAtPath:filePath];
		file.length = [fileHandle seekToEndOfFile];
		[files addObject:file];
	}
	return files;
}

+(NSMutableData *)getDataByHeaderString:(NSString *)header
{
	NSMutableData *mutableData = [NSMutableData dataWithLength:100];
	NSData *headerData = [header dataUsingEncoding:NSUTF8StringEncoding];
	[mutableData replaceBytesInRange:NSMakeRange(0, headerData.length) withBytes:headerData.bytes];
	return mutableData;
}

@end
