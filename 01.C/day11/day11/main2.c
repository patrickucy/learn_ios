//
//  main2.c
//  day11
//
//  Created by Patrick Yu on 6/7/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <stdio.h>
#define Sum(a,b) a+b
//#x将数据转换成字符串类型
#define STR(x) #x
#define QUANJU(x) g_##x

int QUANJU(r) =1;

int main(){
	printf("the sum of %d and %d is %d\n",5,6,Sum(5, 6));
	int r =3;
	printf("r:%d str:%s\n",r,STR(3));
	printf("r2:%d\n",QUANJU(r));
	printf("current line is %d\n",__STDC__);
}