//
//  main3.c
//  day10
//
//  Created by Patrick Yu on 6/6/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <stdio.h>

void typeInAStringThenOutput(){
	char string[20];  //在内存中开辟了空间
	printf("please input a string\n");
	scanf("%s",string);
	
	printf("input:%s\n",string);
}

int main(){
	//1
	printf("hello\n");
	//2
	char str[10]= {'h','e','l','l','o','\0'}; //少了最后的\0那么就不是字符串了
	char str1[10]= {'h','e','l','l','o','\0'};
	printf("str:%s\n",str);
	printf("str:%p\n",str);
	printf("str1:%p\n",str1);
	//3
	char* str2 = "hello";//双引号的这种字符串就是取地址并可以赋值给别人的，数据保存在内存中的代码区
	printf("str2:%s\n",str2);
	printf("str2:%p\n",str2);
	char* str3 = "hello";
	printf("str3:%p\n",str3);
	
	char* str4 = str1;
	printf("str4:%s\n",str4);
	typeInAStringThenOutput();
	return 0;
}

