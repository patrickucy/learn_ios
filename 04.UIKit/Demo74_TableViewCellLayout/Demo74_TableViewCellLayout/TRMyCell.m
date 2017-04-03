//
//  TRMyCell.m
//  Demo74_TableViewCellLayout
//
//  Created by Patrick Yu on 8/7/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRMyCell.h"

@implementation TRMyCell

-(void)setMusic:(TRMusic *)music
{
	_music = music;
	self.musicName.text = _music.name;
	self.musicArtist.text = _music.artist;
	self.downloadedIcon.hidden = !music.downloaded;
	self.highQualityIcon.hidden = !music.highQuality;
	
}

//*****!!!!!!!!!=======此 Demo 最主要的内容就在这个点上!!!就是 view 可以自己自定义布局
-(void)layoutSubviews
{
	[super layoutSubviews];
	//对我们的当前 cell 进行布局
	CGFloat x = self.downloadedIcon.frame.origin.x;
	//下载的图标就放在那个位置,下载了就显示,没下载就不显示,始终都占用一个小位置
	//计算高清图标的未知
	if (self.music.downloaded) {
		x += self.downloadedIcon.frame.size.width;
	}
	if (self.music.highQuality) {
		CGRect frame = self.highQualityIcon.frame;
		frame.origin.x = x;
		self.highQualityIcon.frame = frame;
		x += self.highQualityIcon.frame.size.width;
	}
	CGRect frame = self.musicArtist.frame;
	frame.origin.x = x;
	self.musicArtist.frame = frame;
	//记得关掉 Autolayout 要不然的话,一开始启动的时候是 autolayout 的结果,只有当你刷新了每一个 cell 才会变成现在你设置的这个结果
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
