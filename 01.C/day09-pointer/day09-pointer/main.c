//
//  main.c
//  day09-pointer
//
//  Created by Patrick Yu on 6/5/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <stdio.h>
void test0(){//pointer foundation
	int i =2;
	int* p;
	p = &i;
	printf("p->value:%d\n",*p);
	printf("p :%d\n",p);
	printf("i's address is :%d\n",&i);
}

void swap(int* p, int* p2){//pointer parameter
	printf("swap1 p->value:%d\n",*p);
	printf("swap1 p2->value:%d\n",*p2);
	int temp = 0;
	temp = *p;
	*p = *p2;
	*p2 = temp;
	printf("swap2 p->value:%d\n",*p);
	printf("swap2 p2->value:%d\n",*p2);
}


//  练习：从键盘上输入5个数，使用一个函数求5个数中得最大值，最小值，注意函数没有返回值
void test1(){
	
	int i=2,j=3;
	printf("main i value:%d\n",i);
	printf("main j value:%d\n",j);
	swap(&i,&j);
	printf("main2 i value:%d\n",i);
	printf("main2 j value:%d\n",j);
	

}

void getMaxAndMin(int length,int array[],int* maxp, int* minp){
	for (int i=0; i<length; i++) {
		if (array[i]>*maxp) {
			*maxp = array[i];
		}
		if (array[i]<*minp) {
			*minp = array[i];
		}
	}
}

int* returnPointer(){
	int* p;
	return p;
}

int main(int argc, const char * argv[])
{
	int array[5]={0};
	int max = - 10000,min = 10000;
	for (int i = 0; i < sizeof(array)/sizeof(array[0]); i++) {
		printf("请输入第%d个：\n",i+1);
		scanf("%d",&array[i]);
	}
	getMaxAndMin(sizeof(array)/sizeof(array[0]), array, &max, &min);
	printf("max:%d\n",max);
	printf("min:%d\n",min);
	return 0;
}



















