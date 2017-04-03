//
//  main4.c
//  day10
//
//  Created by Patrick Yu on 6/6/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <stdio.h>
int main(){
	char name[20];
	int age;
	int salary;
	printf("please input name:\n");
	scanf("%s",name);
	printf("please input age:\n");
	scanf("%d",&age);
	printf("please input salary\n");
	scanf("%d",&salary);

	printf("your person information as follow\n");
	printf("name:%s age:%d salary:%d\n",name,age,salary);
	printf("the following string is printed by puts()\n");
	puts(age);
}