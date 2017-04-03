//
//  TRMainboard.h
//  Demo3_DIP
//
//  Created by Patrick Yu on 6/23/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRMainboardProtocol.h"

//#12. since you have changed your memory property into id, you don't need these two #import
//#import "TRKingston.h"
//#import "TRSamsung.h"

@interface TRMainboard : NSObject
//#3.if you want to change your TRKingston to TRSamsung,then you have to change this property. if you do so, then you violate the OCP(open closed principle) for changing constantly your class!
//#4.when you have to change your memory with totally different type, the type you defined here is not generic! in order to solve this, you cant change your class type into id!

//#5. old version
//@property (strong,nonatomic) TRKingston *memory;

//#6. new version, notice that the little star is gone ->main.m
//@property (strong,nonatomic) id memory;

//#14. add this line of code then it will force any object to conform this protocol
@property (strong,nonatomic) id <TRMainboardProtocol> memory;

-(void)work;


@end

@protocol MainboardProtocol <NSObject>

-(void)run;

@end

