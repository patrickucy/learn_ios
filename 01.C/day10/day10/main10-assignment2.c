//
//  main10-assignment2.c
//  day10
//
//  Created by Patrick Yu on 6/7/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
int main(int argc,char* argv[]){
	char* persons[5] = {"guanyu","zhangfei","zhaoyun","huangzhong","machao"};
	int i =0;
	for(i=0;i<5;i++){
		if (strcmp(argv[1], persons[i])==0) {
			printf("you got the name right\n");
			printf("the name you just typed is:%s",argv[1]);
			exit(0);
		}
	}
	printf("you got the name wrong\n");
	return 0;
}