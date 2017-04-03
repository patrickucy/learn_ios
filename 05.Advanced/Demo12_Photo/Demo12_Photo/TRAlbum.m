//
//  TRAlbum.m
//  Demo12_Photo
//
//  Created by Patrick Yu on 8/12/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRAlbum.h"

@implementation TRAlbum
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.imagePaths = [NSMutableArray array];
    }
    return self;
}
@end
