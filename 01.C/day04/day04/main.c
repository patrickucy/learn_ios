//
//  main.c
//  day04
//
//  Created by Patrick Yu on 6/3/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

	// insert code here...
	printf("sizeof(int):%ld\n",sizeof(int));
	printf("sizeof(char):%ld\n",sizeof(char));
	printf("sizeof(double):%ld\n",sizeof(double));
	printf("sizeof(short int):%ld\n",sizeof(short int));

	printf("sizeof(5 + 3.14):%ld\n",sizeof(5 + 3.14));
	printf("sizeof(float):%ld\n",sizeof(int));
	
	printf("10/3 = %d\n", 10/3);
	printf("10/-3 = %d\n", 10/-3);
	
	
	printf("input your seconds:\n");
	
	int l =1;
	printf("l*=3 :%d \n",l*=3 );
	l =1;
	printf("l/=3 :%d \n",l/=3 );
	l =1;
	printf("l%%=3 :%d \n",l%=3 );
    return 0;
}

