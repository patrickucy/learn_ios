//
//  main.m
//  day05-inheritance
//
//  Created by Patrick Yu on 6/12/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRDog.h"
#import "TRCat.h"

int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    TRDog *dog = [[TRDog alloc] init];
		[dog eat];
		
	    TRCat *cat = [[TRCat alloc] init];
		[cat eat];
		
		[dog shout];
		[cat shout];
	}
    return 0;
}

