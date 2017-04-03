//
//  TRUserInfo.m
//  day04-01-practise
//
//  Created by Patrick Yu on 6/21/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRUserInfo.h"

@implementation TRUserInfo

-(id)initWithName:(NSString *)name andEmail:(NSString *)email andTelephone:(NSString *)telephone
{
	if (self = [super init]) {
		self.name = name;
		self.email = email;
		self.telephone = telephone;
	}
	return self;
}

-(void)print
{
	NSLog(@"name:%@ \t telephone:%@ \t email:%@",self.name,self.telephone,self.email);
}


-(NSComparisonResult)compareUserInfoName:(TRUserInfo*)userInfo;
{
	return [self.name compare:userInfo.name];

}
@end
