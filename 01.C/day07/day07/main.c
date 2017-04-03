//
//  main.c
//  day07
//
//  Created by Patrick Yu on 6/4/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
	int array[3] = {1,2,3};
	array[1]=4;
	for (int i=0; i<3; i++) {
		printf("array[%d]:%d\n",i,array[i]);
		
	}
	printf("\n");
	
	int array2[5] ={0};
	for (int i = 0 ; i<5; i++) {
		printf("please input your #%d number\n",i+1);
		
		scanf("%d",&array2[i]);
	}
	for (int i = 0; i<5; i++) {
		printf("array[%d]: %d\n",i,array2[i]);
	}
    return 0;
}

