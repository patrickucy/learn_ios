//
//  main.c
//  day09-pointer2
//
//  Created by Patrick Yu on 6/5/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
	int array[5]={1,2,3,4,5};
	printf("array[0] address:%p\n",&array[0]);
	printf("array[0] address:%p\n",&array[1]);
	printf("array[0] address:%p\n",&array[2]);
	printf("array[0] address:%p\n",&array[3]);
	printf("array[0] address:%p\n",&array[4]);
	
	printf("array address:%p\n",array);
	int* pointer = array;
	printf("pointer ->value:%d\n",*pointer);
	printf("pointer +1->value:%d\n",*(pointer+1));
	printf("pointer+1 address:%p\n",pointer+1);
    return 0;
}

