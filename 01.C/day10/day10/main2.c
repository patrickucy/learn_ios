//
//  main2.c
//  day10
//
//  Created by Patrick Yu on 6/6/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//
//	在键盘上输入5个数，使用函数返回最大值，返回值类型为指针类型。
#include <stdio.h>
int  max = -10000;   //虽然可以做指针类型返回，但是毕竟这个是全局变量，是被所有的函数所共享，所以会存在安全问题
int* getMax(int length, int numbers[]){
	static int max = -1000;				//使用static修饰的变量，可以作为返回值类型为指针类型的变量
	for (int i = 0; i<length; i++) {
		if (numbers[i]>max) {
			max = numbers[i];
		}
	}
	return &max;
}

int main(){
	int numbers[5]={0};
	for (int i = 0; i<sizeof(numbers)/sizeof(numbers[0]) ;i++) {
		printf("please input #%d element:\n",i+1);
		scanf("%d",&numbers[i]);
	}
	int* p;
	p = getMax(sizeof(numbers)/sizeof(numbers[0]), numbers);
	printf("max:%d\n",*p);
}