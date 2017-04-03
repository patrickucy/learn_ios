//
//  main3-advanced macro.c
//  day11
//
//  Created by Patrick Yu on 6/8/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <stdio.h>
	// macro first attempt
	// 参数编译
void test1(){
	int cai = 0;
	printf("please order you food\n");
	scanf("%d",&cai);
	
	
#ifndef ZHAOBENSHAN
	if (cai==1) {
		printf("this food is available\n");
	}else {
		printf("this food is unavailable\n");
	}
#else
	if (cai==1) {
		printf("this food is really not available\n");
	}else {
		printf("this food is unavailable\n");
	}
#endif
}


#define SHUZI 4//定义一个数字 根据宏值来判断编译代码
void test2 (){
	int cai = 0;
	printf("please order you food\n");
	scanf("%d",&cai);
	
	
#ifdef SHUZI	//跟上面的已经定义的4构成条件
	if (cai==1) {
		printf("this food is available\n");
	}else {
		printf("this food is unavailable\n");
	}
#else
	if (cai==1) {
		printf("this food is really not available\n");
	}else {
		printf("this food is unavailable\n");
	}
#endif

}

	//根据条件判 断 关系表达式 或 逻辑表达式(跟上面的定义没什么太大的关系）
#define num1 1
int main(){
	int cai = 0;
	printf("please order you food\n");
	scanf("%d",&cai);
	
	
#if num1 ==1	//跟上面的已经定义的4构成条件
		printf("macro value is 1\n");
	
#elif num1==2
		printf("macro value is 2\n");
#else
	printf("macro is other situation\n");
	
#endif
	
	return 0;
}