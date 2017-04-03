//
//  main.c
//  day10
//
//  Created by Patrick Yu on 6/5/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//
//	在键盘上输入一个秒数，使用函数求出时分秒，并在main函数中输出结果
#include <stdio.h>

void getHourMinuteAndSecondByInputSecond(int* hourP,int* minuteP,int* secondP,int inputSecond){
	*hourP = inputSecond / 3600;
	*minuteP = inputSecond % 3600 / 60;
	*secondP = inputSecond % 60;
}

int main(int argc, const char * argv[])
{
	/*
	int inputSecond = 0;
	int minute = 0;
	int hour =0;
	int second = 0;
	
	printf("please input a second:\n");
	scanf("%d",&inputSecond);
	
	getHourMinuteAndSecondByInputSecond(&hour,&minute,&second,inputSecond);
	printf("hour:%d\n",hour);
	printf("minute:%d\n",minute);
	printf("second:%d\n",second);
	*/
	
	
	/*
	 printf("argc:%d",argc);
	for (int i = 0; i<argc; i++) {
		printf("%s\n",argv[i]);
	}
	*/
	
	char* suzu[3];
	char op[20];
	for (int i=0; i<3; i++) {
		printf("please input a name:\n");
		fgets(op, 30, stdin);
		suzu[i] = op;
	}
	for (int j =0; j<3;j++) {
		printf("%s\n",suzu[j]);
		printf("%p\n",suzu[j]);
	}
    return 0;
}

