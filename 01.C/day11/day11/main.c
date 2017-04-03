//
//  main.c
//  day11
//
//  Created by Patrick Yu on 6/7/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <stdio.h>
//宏定义
#define PI 3.1415926
//宏函数
#define MianJi(r) PI*r*r
int main(int argc, const char * argv[])
{
	int r=3;
	printf("area of a circle:%f\n",MianJi(r));//在编译前就用宏的值换回来了
    return 0;
}

