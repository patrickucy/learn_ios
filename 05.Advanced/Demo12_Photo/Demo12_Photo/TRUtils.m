//
//  TRUtils.m
//  Demo12_Photo
//
//  Created by Patrick Yu on 8/12/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRUtils.h"
#import "TRAlbum.h"	

@implementation TRUtils
+(NSMutableArray *)creatAlbumsByDirectoryPath:(NSString *)path
{
	NSFileManager *fileManager = [NSFileManager defaultManager];
	NSMutableArray *albums = [NSMutableArray array];
	NSArray *directoryNames = [fileManager contentsOfDirectoryAtPath:path error:nil];
	for (NSString *directoryName in directoryNames) {
		if ([directoryName hasPrefix:@"."]){
			continue;
		}
		NSString *directoryPath = [path stringByAppendingPathComponent:directoryName];//用这种方法就会在 string 里面加斜杠
		TRAlbum *album = [[TRAlbum alloc] init];
		album.name = directoryName;//album 即使已经加到数组里面,你再更改album 的属性,也是更改了的,因为你一直都在操作这个对象的指针
		NSArray *imageNames = [fileManager contentsOfDirectoryAtPath:directoryPath error:nil];
		for (NSString *imageName in imageNames) {
			
			if ([imageName hasSuffix:@"jpg"] ||
				[imageName hasSuffix:@"png"] ||
				[imageName hasSuffix:@"JPG"] ||
				[imageName hasSuffix:@"PNG"] ||
				[imageName hasSuffix:@"jpeg"])
			{
				
				NSString *imagePath = [directoryPath stringByAppendingPathComponent:imageName];
				[album.imagePaths addObject:imagePath];
			}
			
		}
		[albums addObject:album];
	}
	return albums;
}
@end
