//
//  main.m
//  day06-practise
//
//  Created by Patrick Yu on 6/12/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRPainting.h"
#import "TRPop.h"
#import "TRRock.h"

int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    TRPainting *painting = [[TRPainting alloc] init];
		painting.author = @"Beiduofen";
		painting.year = 1993;
		painting.size = 10;
		[painting print];
		
		TRPop* popmusic = [[TRPop alloc] init];
		popmusic.author = @"willian";
			
		
		TRRock *rockMusic = [[TRRock alloc] init];
		rockMusic.singerCount = 100;
		rockMusic.author = @"david";
	}
    return 0;
}

