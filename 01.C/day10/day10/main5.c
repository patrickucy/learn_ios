//
//  main5.c
//  day10
//
//  Created by Patrick Yu on 6/7/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//	两种字符串的输出方式

#include <stdio.h>
int main(){
	char str[10] = {'1','h','i',',','C','h','i','n','a','\0'};
	char* str2 = "2hi,China\n";
	printf("str:%s\n",str);
	puts(str);
	puts(str2);
}