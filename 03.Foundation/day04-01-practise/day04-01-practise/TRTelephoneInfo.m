//
//  TRTelephoneInfo.m
//  day04-01-practise
//
//  Created by Patrick Yu on 6/21/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRTelephoneInfo.h"

@implementation TRTelephoneInfo
-(id)init
{
	if (self = [super init]) {
		self.userInfos = [[NSMutableArray alloc] init]; //这里用的就是代码的组合方式！使这种引用性数据属性紧密联系本类
	}
	return self;
}

-(void)addUserInfos:(TRUserInfo *)userInfo
{
	[self.userInfos addObject:userInfo];
}

-(void)removeUserInfoByName:(NSString *)userInfoName
{
	
	TRUserInfo *removeUserInfo = nil;
	if (self.userInfos) {
		for (TRUserInfo *userInfo in self.userInfos) {
			if ([userInfo.name isEqualToString:userInfoName]) {//注意这里的string对比要发送消息而不是==
				removeUserInfo = userInfo;//数组中把这个找到了的引用给删掉
			}
		}
		//正在快速枚举中不允许删除数组中的元素
		[self.userInfos removeObject:removeUserInfo];
	}else {
		NSLog(@"There is nothing in data base,can't delete");
	}

}

-(void)lookUpUserInfo:(NSString *)userInfoName
{
	if (self.userInfos) {
		for (TRUserInfo *userInfo in self.userInfos) {
			if ([userInfo.name isEqualToString:userInfoName]) {//注意这里的string对比要发送消息而不是==
				[userInfo print];
			}
		}
	}else {
		NSLog(@"There is nothing in data base");
	}

}

-(void)list
{
	if (self.userInfos) {
		for (TRUserInfo *userInfo in self.userInfos) {
			[userInfo print];
		}
	}else {
		NSLog(@"There is nothing in data base");
	}
}



-(void)sort
{
	self.userInfos=(NSMutableArray *)[self.userInfos sortedArrayUsingSelector:@selector(compareUserInfoName:)];
}
@end
