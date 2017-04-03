//
//  TRStudent.m
//  day04-02-NSSet
//
//  Created by Patrick Yu on 6/21/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRStudent.h"

@implementation TRStudent
-(NSUInteger)hash
{
	NSLog(@"%@ super hash is called",self.name);
	return [super hash];
}


-(BOOL)isEqual:(id)object
{
	//	return [super isEqual:object]; 这个就是原来的方法，你会发现，即使是对象类型和数据都相同，set也不会自动删除！！！

	//1.判断对象类型
	//2.判断对象的值
	
	BOOL ageIsEqual =  self.age == ((TRStudent *)object).age;
	BOOL nameIsEqual =  [self.name isEqualToString:((TRStudent *)object).name];
	BOOL classIsEqual = [object isKindOfClass:[TRStudent class]];
	
	if (self == object) {
		return YES;
	}else if( ageIsEqual && nameIsEqual && classIsEqual){
		return YES;
	}
	NSLog(@"%@ super isEqual is called",self.name);
	return NO;
	//一旦这个isEqual方法返回了YES就会自动删除另外一个重复的对象，这样就保证了集合的元素都是唯一的
	 
}

@end
