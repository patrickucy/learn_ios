//
//  TRArea.m
//  Demo19_TableView_Array_Object
//
//  Created by Patrick Yu on 6/28/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRArea.h"

@implementation TRArea
+(NSArray *)china
{
	TRArea *beijing = [[TRArea alloc]init];
	beijing.name = @"Beijing";
	beijing.population = 21;
	
	TRArea *guangzhou = [[TRArea alloc] init];
	guangzhou.name = @"Guangzhou";
	guangzhou.population = 13;
	
	return @[beijing,guangzhou];
}
@end
