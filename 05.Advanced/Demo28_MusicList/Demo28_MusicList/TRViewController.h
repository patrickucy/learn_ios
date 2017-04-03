//
//  TRViewController.h
//  Demo28_MusicList
//
//  Created by Patrick Yu on 8/21/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TRAppDelegate.h"

@interface TRViewController : UIViewController
@property (nonatomic,strong) NSMutableArray *musicPaths;
@property (nonatomic) int index;
@property (nonatomic,weak) TRAppDelegate *app;
@end
