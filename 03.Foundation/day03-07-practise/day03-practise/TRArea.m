//
//  TRArea.m
//  day03-practise
//
//  Created by Patrick Yu on 6/21/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRArea.h"

@implementation TRArea
-(id)initWithName:(NSString *)name andPopulation:(NSInteger)population
{
	if (self = [super init]) {
		self.name = name;
		self.population = population;
	}
	return self;
}
-(NSString *)description
{
	return [NSString stringWithFormat:@"Area name:%@ population:%ld",self.name,self.population];
}
@end
