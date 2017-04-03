//
//  TRPerson.m
//  day05-encapsulation
//
//  Created by Patrick Yu on 6/12/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRPerson.h"


@implementation TRPerson
{
	int _money;
}
-(void)showInfo
{
	NSLog(@"my age is %d",self.age);
}

-(void)showMoney
{
	NSLog(@"my money is %d",_money);
}
@end
