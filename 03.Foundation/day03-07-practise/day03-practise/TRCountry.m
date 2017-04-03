//
//  TRCountry.m
//  day03-practise
//
//  Created by Patrick Yu on 6/21/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRCountry.h"

@implementation TRCountry
-(id)init
{
	if (self = [super init]) {
		self.areas = [[NSMutableArray alloc] init];
	}
	return self;
}

-(void)showAreas
{
	for (TRArea *area in self.areas) {
		NSLog(@"%@",area);
	}
}

-(void)showArea:(NSString *)name
{
	for (TRArea *area in self.areas) {
		if ([area.name isEqualToString:name]) {
			NSLog(@"%@",area);
		}
	}
}
@end
