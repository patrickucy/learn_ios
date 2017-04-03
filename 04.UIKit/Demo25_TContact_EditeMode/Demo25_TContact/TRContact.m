//
//  TRContact.m
//  Demo22_Practise1
//
//  Created by Patrick Yu on 6/29/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRContact.h"

@implementation TRContact
+(NSMutableArray *)demoData
{
	NSMutableArray *array = [NSMutableArray array];
	TRContact *contact1 = [[TRContact alloc] init];
	contact1.name = @"Samsung";
	contact1.age = 111;
	contact1.phoneNumber = @"1111111111";
	
	TRContact *contact2 = [[TRContact alloc] init];
	contact2.name = @"Apple";
	contact2.age = 222;
	contact2.phoneNumber = @"2222222222";
	
	TRContact *contact3 = [[TRContact alloc] init];
	contact3.name = @"Google";
	contact3.age = 333;
	contact3.phoneNumber = @"3333333333";
	
	[array addObject:contact1];
	[array addObject:contact2];
	[array addObject:contact3];

	return array;
}
@end
