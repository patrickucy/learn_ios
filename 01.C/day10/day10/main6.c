//
//  main6.c
//  day10
//
//  Created by Patrick Yu on 6/7/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <stdio.h>
int main(){
	/*
	char str[3];
	printf("please input a string\n");
	scanf("%s",str);
	printf("%s\n",str);
	*/
	
	/*
	//回车也可以做结束输入函数的标识
	char ch,ch2,ch3;
	printf("input a char:\n");
	scanf("%c",&ch);
	printf("input a char2:\n");
	scanf("%c",&ch2);
	printf("input a char3:\n");
	scanf("%c",&ch3);
	printf("char:%c \nchar2:%c \nchar3:%c\n",ch,ch2,ch3);
	*/
	
	char str[5];
	printf("please input string:\n");
	fgets(str, sizeof(str)/sizeof((str[0])), stdin);
	printf("%s\n",str);
	return 0;
}