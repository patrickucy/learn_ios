//
//  main.m
//  day05-encapsulation
//
//  Created by Patrick Yu on 6/12/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRPerson.h"
#import "TRStudent.h"
int main(int argc, const char * argv[])
{

	@autoreleasepool {
		
	    TRPerson* person = [[TRPerson alloc] init] ;
		person.age = 18;
		[person showInfo];

		TRStudent* student = [[TRStudent alloc] init];
		student->
	}
    return 0;
}

