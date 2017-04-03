//
//  main4-macto practice.c
//  day11
//
//  Created by Patrick Yu on 6/8/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <stdio.h>
int main(){
	/*
	 根据设备跨平台来执行原理型代码
	 */
#define num1 0
	
	int cai = 0;
	printf("please order you food\n");
	scanf("%d",&cai);
		
		
#if num1 ==1	//跟上面的已经定义的4构成条件
	printf("iphone 4s \n");
		
#elif num1==2
	printf("iphone5~5s \n");
		
#elif num1==3
	printf("ipad \n");

#elif num1==4
	printf("ipad mini\n");
	
#else
	printf("iphone 1~4 \n");
		
#endif
	return 0;
}