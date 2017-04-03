//
//  main.c
//  day06
//
//  Created by Patrick Yu on 6/4/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
	/*
	for (int i = 0; i<10; i++) {
		
		printf("%d\n",i+1);
	}
	
	for (int i =0; i<100; i++) {
		printf("%d\n",i+1);
	}
	int sum =0;
	for (int i =0; i<100; i++) {
		
		sum +=i+1;
	}
	printf("%d\n",sum);
	*/
	for (int i = 1; i<=100; i++) {
		if (i%2==0) {
			printf("%d is even\n",i);
		}else {
			printf("     %d is ji\n",i);
		}
	}
	
	printf("99 multiples\n");
	for (int i =1 ; i<=9; i++) {
		for (int j = 1 ; j<=i; j++) {
			printf("%d*%d =%d\t",i,j,i*j);
		}
		printf("\n");
	}
    return 0;
}

