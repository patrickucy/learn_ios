//
//  TRArea.m
//  Demo34_TableView_Final
//
//  Created by Patrick Yu on 7/2/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRArea.h"

@implementation TRArea
+(TRArea *)china
{
	TRArea *chaoYang = [[TRArea alloc] init];
	chaoYang.name = @"chaoYang";
	chaoYang.subAreas= @[];
	
	TRArea *haiDian = [[TRArea alloc] init];
	haiDian.name = @"haiDian";
	haiDian.subAreas= @[];
	
	TRArea *beiJing = [[TRArea alloc] init];
	beiJing.name = @"beiJing";
	beiJing.subAreas =@[chaoYang,haiDian];
	
	
	
	TRArea *xianCun = [[TRArea alloc] init];
	xianCun.name = @"xianCun";
	xianCun.subAreas= @[];
	
	TRArea *daShan = [[TRArea alloc] init];
	daShan.name = @"daShan";
	daShan.subAreas= @[];
	
	TRArea *daShi = [[TRArea alloc] init];
	daShi.name = @"daShi";
	daShi.subAreas= @[daShan,xianCun];
	
	TRArea *tianHe = [[TRArea alloc] init];
	tianHe.name = @"tianHe";
	tianHe.subAreas= @[];
	
	TRArea *panYu = [[TRArea alloc] init];
	panYu.name = @"panYu";
	panYu.subAreas= @[daShi];
	
	TRArea *yueXiu = [[TRArea alloc] init];
	yueXiu.name = @"yueXiu";
	yueXiu.subAreas= @[];
	
	
	TRArea *guangZhou = [[TRArea alloc] init];
	guangZhou.name = @"guangZhou";
	guangZhou.subAreas= @[tianHe,panYu,yueXiu];
	
	TRArea *shenZhen = [[TRArea alloc] init];
	shenZhen.name = @"shenZhen";
	shenZhen.subAreas= @[];
	
	TRArea *guangDong = [[TRArea alloc] init];
	guangDong.name = @"guangDong";
	guangDong.subAreas= @[guangZhou,shenZhen];
	
	
	
	TRArea *hongKong = [[TRArea alloc] init];
	hongKong.name = @"hongKong";
	hongKong.subAreas= @[];
	
	
	
	TRArea *china = [[TRArea alloc] init];
	china.name = @"china";
	china.subAreas = @[beiJing,guangDong,hongKong];
	
	return china;
}
@end
