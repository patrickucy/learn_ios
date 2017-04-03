//
//  main.c
//  day08
//
//  Created by Patrick Yu on 6/5/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <stdio.h>
void showArray(int length, int array[]){
	for (int i=0; i<length; i++) {
		printf("array[%d]:%d\n",i,array[i]);
	}
}

int gerArraySum(int length,int array[]){
	int sum = 0;
	for (int i=0; i<length; i++) {
		sum += array[i];
	}
	return sum;
}

#include <stdlib.h>
int main(int argc, const char * argv[])
{
	int arr[5]={1,2,3,4,5};
	showArray(sizeof(arr)/sizeof(arr[0]), arr);
	int sum = 0;
	sum = gerArraySum(sizeof(arr)/sizeof(arr[0]),arr);
	printf("sum:%d\n",sum);
	
	printf("program starts\n");
	exit(0);
	printf("program ends\n");
    return 0;
}

