//
//  TRCollege.m
//  day03-practise
//
//  Created by Patrick Yu on 6/20/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRCollege.h"

@implementation TRCollege
-(id)init
{
	if (self = [super init]) {
		_classes = [[NSMutableArray alloc] init];
	}
	return self;
}
-(NSString *)description
{
	return [NSString stringWithFormat:@"College Name:%@  %@",self.name,self.classes];
}
@end
