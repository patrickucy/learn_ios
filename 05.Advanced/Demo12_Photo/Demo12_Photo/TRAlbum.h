//
//  TRAlbum.h
//  Demo12_Photo
//
//  Created by Patrick Yu on 8/12/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRAlbum : NSObject
@property (nonatomic,copy) NSString *name;
@property (nonatomic,strong) NSMutableArray *imagePaths;
@end
