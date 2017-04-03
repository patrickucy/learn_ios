//
//  TRArea.m
//  Demo21_TableView_Array_Object_Array
//
//  Created by Patrick Yu on 6/28/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRArea.h"

@implementation TRArea
+(NSArray *)china
{
	TRArea *beiJing = [[TRArea alloc] init];
	beiJing.name = @"Beijing";
	beiJing.subareaNames = @[@"ChaoYang",@"HaiDian",@"DongCheng",@"XiCheng",@"MiYun",@"ChangPing",@"DaXing",@"MenTouGou"];
	
	TRArea *guangDong = [[TRArea alloc] init];
	guangDong.name = @"Guangdong";
	guangDong.subareaNames = @[@"GuangZhou",@"DongGuan",@"ShenZhen",@"ZhongShan",@"FoShan",@"ZhuHai",@"MeiZhou"];
	
	return @[beiJing,guangDong];
}
@end
