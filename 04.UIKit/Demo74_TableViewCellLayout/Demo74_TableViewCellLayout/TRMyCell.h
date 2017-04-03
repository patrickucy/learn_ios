//
//  TRMyCell.h
//  Demo74_TableViewCellLayout
//
//  Created by Patrick Yu on 8/7/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TRMusic.h"	

@interface TRMyCell : UITableViewCell
@property (nonatomic,strong) TRMusic *music;
//这是一个 view 的属性,所以要公开!!!!!不是 Controller, 不需要封装!!!!! view 的属性当然要公开!!!这样 Controller 才能访问到这个 view 的属性,才能做更改!!!!!!
@property (weak, nonatomic) IBOutlet UILabel *musicName;
@property (weak, nonatomic) IBOutlet UILabel *musicArtist;
@property (weak, nonatomic) IBOutlet UIImageView *downloadedIcon;
@property (weak, nonatomic) IBOutlet UIImageView *highQualityIcon;

@end
