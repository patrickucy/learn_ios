//
//  main2-struct assignment.c
//  day11-2
//
//  Created by Patrick Yu on 6/8/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//
#include "struct assigment.h"
#include <stdio.h>

int main(){
	Student students[3];
	for (int i =0; i<3; i++) {
		printf("please input a name for student%d\n",i+1);
		scanf("%s",students[i].name);
		printf("please input studentID for student%d\n",i+1);
		scanf("%d",&students[i].studentID);
		printf("please input age for student%d\n",i+1);
		
		scanf("%d",&students[i].age);
		printf("please input sex(F/M) for student%d\n",i+1);
		scanf("%s",students[i].sex);//这里也可以改成%c，并用“%*c 来清除缓存区
	}
	
	printf("the information for 3 students is as follow\n");
	for (int i =0; i<3; i++) {
		printf("name:%s    studentID:%d    age:%d    sex:%s\n",students[i].name,students[i].studentID,students[i].age,students[i].sex);
	}
	return 0;//如果有多个C语言的源文件，记得在编译的地方把所有的C文件都编译起来
}