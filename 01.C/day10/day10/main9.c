//
//  main9.c
//  day10
//
//  Created by Patrick Yu on 6/7/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <stdio.h>
#include <string.h>

int main(){
	char* str = "hello";
	char str2[10];
	strcpy(str2, str);
	printf("%s\n",str2);
	
	char str3[30] = {'w','o','r','l','d','\0'};
	strcat(str3, str);
	printf("%s\n",str3);
	long i = strlen(str3);
	printf("str3 length:%ld\n",i);
	
	char *str4="hello1";
	int cmpResult = strcmp(str4, str);
	printf("compare result is %d\n",cmpResult);
	return 0;
}