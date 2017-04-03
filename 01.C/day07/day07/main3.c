//
//  main3.c
//  day07
//
//  Created by Patrick Yu on 6/4/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//	多维数组

#include <stdio.h>
int main(){
	int array[2][2]={{1,2},{3,4}};
	
	for (int i =0 ; i<2; i++) {
		for (int j=0; j<2; j++) {
			printf("array[%d][%d]: %d  ",i,j,array[i][j]);
		}
		printf("\n");
	}
	return 0;
}