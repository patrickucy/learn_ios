//
//  main.m
//  day04-01-practise
//
//  Created by Patrick Yu on 6/21/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRTelephoneInfo.h"
#import "TRUserInfo.h"

int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    TRTelephoneInfo *telephoneInfo = [[TRTelephoneInfo alloc] init];
		telephoneInfo.name = @"patrick's telephone book";
		
		TRUserInfo *user1 = [[TRUserInfo alloc] initWithName:@"marry" andEmail:@"marry@gmail.com" andTelephone:@"13423452345"];
		TRUserInfo *user2 = [[TRUserInfo alloc] initWithName:@"jack" andEmail:@"jack@gmail.com" andTelephone:@"18623908973"];
		TRUserInfo *user3 = [[TRUserInfo alloc] initWithName:@"tom" andEmail:@"tom@gmail.com" andTelephone:@"13423325678"];
		TRUserInfo *user4 = [[TRUserInfo alloc] initWithName:@"aim" andEmail:@"aim@gmail.com" andTelephone:@"19912904389"];
		
		//[user1 printName];
		//[user1 printTelephone];
		//[user1 printEmail];
		
		[telephoneInfo addUserInfos:user1];
		[telephoneInfo addUserInfos:user2];
		[telephoneInfo addUserInfos:user3];
		[telephoneInfo addUserInfos:user4];
		
		//[telephoneInfo list];
		//[telephoneInfo sort];
		//[telephoneInfo list];
		//	[telephoneInfo lookUpUserInfo:@"aim"];
		
		[telephoneInfo removeUserInfoByName:@"aim"];
		[telephoneInfo list];
		
		
		
	
	}
    return 0;
}

