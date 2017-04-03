//
//  TRMusicsViewController.h
//  Demo74_TableViewCellLayout
//
//  Created by Patrick Yu on 8/7/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TRMusicGroup.h"

@interface TRMusicsViewController : UITableViewController
@property (nonatomic,strong) TRMusicGroup *musicGroup;
@property (nonatomic,strong) NSArray *musics;
@end
