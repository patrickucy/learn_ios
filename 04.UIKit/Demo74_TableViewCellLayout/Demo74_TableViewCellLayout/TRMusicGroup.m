//
//  TRMusicGroup.m
//  Demo74_TableViewCellLayout
//
//  Created by Patrick Yu on 8/7/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRMusicGroup.h"

@implementation TRMusicGroup
+(NSArray *)fakeData
{
	return [TRMusic demoData];
}
-(instancetype)initWithFakeData
{
	self = [super init];
    if (self) {
        self.name = @"Pop Music";
		self.musics = [TRMusic demoData];
		self.state = TRMusicGroupStateNormal;
    }
    return self;
}


@end
