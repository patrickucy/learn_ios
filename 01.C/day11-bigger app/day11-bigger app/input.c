//
//  input.c
//  day11-bigger app
//
//  Created by Patrick Yu on 6/8/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <stdio.h>
int g_i =18;//全局变量
static int input(){//这样就只能在当前文件中使用了
	int temp =0;
	printf("please input a number:\n");
	scanf("%d",&temp);
	return temp;
}