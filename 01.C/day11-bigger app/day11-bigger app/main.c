//
//  main.c
//  day11-bigger app
//
//  Created by Patrick Yu on 6/8/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <stdio.h>
#include "input.h"
	//声明其他文件中的全局变量
extern int g_i;
int main(int argc, const char * argv[])
{
	int array[3];
	for (int i=0; i<3; i++) {
		array [i] =input();
	}
	for (int i=0; i<3; i++) {
		printf("array[%d]:%d\n",i,array[i]);
	}
	printf("g_i:%d\n", g_i);
    return 0;
}

