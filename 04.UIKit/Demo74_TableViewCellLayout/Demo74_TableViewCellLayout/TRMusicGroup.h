//
//  TRMusicGroup.h
//  Demo74_TableViewCellLayout
//
//  Created by Patrick Yu on 8/7/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRMusic.h"
typedef NS_ENUM(NSInteger, TRMusicGroupState) {
	TRMusicGroupStateNormal,
	TRMusicGroupStateDownloading,
	TRMusicGroupStateDownloaded
};
@interface TRMusicGroup : NSObject
@property (nonatomic,copy) NSString *name;
@property (nonatomic,strong) NSArray *musics;
@property (nonatomic) TRMusicGroupState state;
+(NSArray *)fakeData;
-(instancetype)initWithFakeData;
@end

