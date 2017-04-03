//
//  TRTransportation.m
//  day06-polymorphism
//
//  Created by Patrick Yu on 6/15/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRTransportation.h"
#import "TRTexi.h"
#import "TRBus.h" //这几个继承的子类头文件不能放在父类的头文件中
#import "TRBike.h"

@implementation TRTransportation
-(void)print
{
	NSLog(@"TRTransportation print");
}
+(TRTransportation *)transportationByNum:(int)num//工厂方法
{
	enum {
		Texi,
		bus,
		bike
	};
	
	switch (num) {
		case Texi:
			return [[TRTexi alloc] init];
		
		case bus:
			return [[TRBus alloc] init];
			
		case bike:
			return [[TRBike alloc] init];
		
		default:
			return [[TRBike alloc] init];
	}
}
@end
