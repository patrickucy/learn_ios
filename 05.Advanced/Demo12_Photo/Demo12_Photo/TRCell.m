//
//  TRCell.m
//  Demo12_Photo
//
//  Created by Patrick Yu on 8/12/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRCell.h"

@implementation TRCell

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

-(void)layoutSubviews//当本控件要现实的时候会调用此方法
{
	[super layoutSubviews];
	self.imageView.frame = CGRectMake(0, 0, 44, 44);
	self.textLabel.frame = CGRectMake(100, 0, 100, self.frame.size.height);
	self.detailTextLabel.frame = CGRectMake(150, 0, 44, 44);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
