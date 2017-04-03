//
//  main.m
//  day05-inheritance-practise
//
//  Created by Patrick Yu on 6/12/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRShape.h"
#import "TRCircle.h"
#import "TRRectangle.h"
#import "TRSquare.h"

int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    TRShape *shape = [[TRShape alloc] init];
		[shape showAreaAndPerimeter];
		
	    TRCircle *circle = [[TRCircle alloc] initWithRadius:20];
		circle.perimeter = [circle calculatePerimeter];
		circle.area = [circle calculateArea];
		[circle showAreaAndPerimeter];
	    
	}
    return 0;
}

