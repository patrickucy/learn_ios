//
//  main8.c
//  day10
//
//  Created by Patrick Yu on 6/7/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <stdio.h>
int main (){
	
	char string1[10],string2[10],string3[10];
	
	printf("please input string1:\n");
	scanf("%s",string1);
	printf("please input string2:\n");
	scanf("%s",string2);
	printf("please input string3:\n");
	scanf("%s",string3);

	char* array[3] = {string1, string2,string3};
	for (int i =0; i<3; i++) {
		printf("array[%d]:%s\n",i,array[i]);
	}
	return 0;
}