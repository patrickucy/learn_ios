//
//  main.c
//  day08-2 recursion
//
//  Created by Patrick Yu on 6/5/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//
//	recursion
#include <stdio.h>


int f1(int n){
	printf("entered f1 function\n");
	if (n==1) return 1;
	return n*f1(n-1);
}
//递推
int f2(int n){
	int res = 1;
	for (int i = 1; i<=n; i++) {
		res = res*i;
	}
	return res;
}
int main(int argc, const char * argv[])
{
	int num =0;
	num = f1(3);
	printf("num:%d\n",num);
	
	int num2=0;
	num2 = f2(3);
	printf("num2:%d\n",num2);
    return 0;
}

