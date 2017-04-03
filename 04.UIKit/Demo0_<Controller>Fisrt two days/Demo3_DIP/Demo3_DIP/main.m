//
//  main.m
//  Demo3_DIP
//
//  Created by Patrick Yu on 6/23/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TRMainboard.h"
#import "TRKingston.h"
#import "TRAppDelegate.h"
#import "TRSamsung.h"
#import "TRBlackKingkong.h"


int main(int argc, char * argv[])
{
	@autoreleasepool {
		
		
		TRMainboard *board = [[TRMainboard alloc] init];
		TRKingston *Kingston = [[TRKingston alloc] init];
		
		//#1.let kingston be the memory of borad
		board.memory = Kingston;
		[board work];
		//#2.if you want to replace your memory with Sansung,then you will realize that you can't insert your sansumg to your board! because your only recognize kingston!!! ->TRMainboard.h
		
		
		//#7. here you can successfully run your board!!!!! ->TRMainboard.m
		TRSamsung *samsung = [[TRSamsung alloc] init];
		board.memory = samsung;
		[board work];
		
		//#13. you now see that this blackingkong doesn't have a TRMainboardProtocol, this app will crash! what if you force it conforms the protocol before implemented? 
		TRBlackKingkong *blackKingkong = [[TRBlackKingkong alloc] init];
		
		//#15. if your blackKingkong doesn't conform the protocol,there will be a warning here!
		board.memory = blackKingkong;
		[board work];
		
		
		
		
	    return UIApplicationMain(argc, argv, nil, NSStringFromClass([TRAppDelegate class]));
		
		
		
		
		
	}
}
