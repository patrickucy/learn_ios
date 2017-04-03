//
//  main.c
//  day09-stack
//
//  Created by Patrick Yu on 6/5/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <stdio.h>
int stack[3]={0};
int count = -1;
int isFull(){
	if (count == 2) {
		return 1;
	}else{
		return 0;
	}
}

int isEmpty(){
	if (count==-1) {
		return 1;
	}else{
		return 0;
	}
}

void push(int num){
	if (!isFull()) {
		printf("push in a ball:%d\n",num);
		++count;
		stack[count]=num;
	}else {
		printf("stack is full, unable to put in\n");
	}
}

int pop(){
	if (!isEmpty()) {
		printf("pop out a ball:%d\n",stack[count]);
		int temp = 0;
		temp = stack[count];
		stack[count]=0;
		count--;
		return temp;
	}else{
		printf("stack is empty, unable to pop out\n");
		return 0;
	}
}

void showStack(){
	for (int i = sizeof(stack)/sizeof(stack[0])-1; i>=0; i--) {
		printf("stack[%d]:%d\n",i,stack[i]);
	}
}


int main(int argc, const char * argv[])
{
	showStack();
	push(1);
	showStack();
	push(2);
	showStack();
	push(3);
	showStack();
	push(4);
	showStack();
	pop();
	showStack();
	pop();
	showStack();
	pop();
	showStack();
	pop();
	showStack();
    return 0;
}

