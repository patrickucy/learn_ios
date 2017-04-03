//
//  main2.c
//  day07
//
//  Created by Patrick Yu on 6/4/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <stdio.h>

int main(){
	int array[10] = {0};
	for (int i=0; i<10; i++) {
		printf("please input your #%d number \n",i+1);
		scanf("%d",&array[i]);
	}
	for (int j = 9; j >= 0; j--) {
		printf("%d  ",array[j]);
	}
	printf("\n");
	return 0;
}

