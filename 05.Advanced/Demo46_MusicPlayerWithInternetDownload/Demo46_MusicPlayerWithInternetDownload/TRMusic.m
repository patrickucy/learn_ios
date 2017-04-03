//
//  TRMusic.m
//  Demo46_MusicPlayerWithInternetDownload
//
//  Created by Yu on 9/5/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRMusic.h"

@implementation TRMusic
-(NSString *)fullPath
{
	if (!_fullPath) {
		_fullPath = [self.encodePath stringByAppendingString:self.decodePath];
	}
	return _fullPath;
}

-(NSString *)lrcPath
{
	if (!_lrcPath) {
		_lrcPath = [NSString stringWithFormat:@"http://box.zhangmen.baidu.com/bdlrc/%d/%@.lrc",[self.lrcid intValue]/100,self.lrcid];
	}
	return _lrcPath;
}
@end
