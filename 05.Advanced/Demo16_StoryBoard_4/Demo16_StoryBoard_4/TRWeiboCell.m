//
//  TRWeiboCell.m
//  Demo16_StoryBoard_4
//
//  Created by Patrick Yu on 8/15/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRWeiboCell.h"

@implementation TRWeiboCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
