//
//  TRUniversity.m
//  day03-practise
//
//  Created by Patrick Yu on 6/20/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRUniversity.h"

@implementation TRUniversity
-(id)init
{
	if (self = [super init]) {
		_colleges = [[NSMutableArray alloc] init];
	}
	return self;
}
-(NSString *)description
{
	return [NSString stringWithFormat:@"University Name:%@  %@",self.name,self.colleges];
}
@end
