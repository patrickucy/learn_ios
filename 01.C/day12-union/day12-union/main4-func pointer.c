//
//  main4-func pointer.c
//  day12-union
//
//  Created by Patrick Yu on 6/9/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <stdio.h>
void func(){
	printf("执行了func函数\n");
}
int main(){
	func();
	//注意是函数名，不带小括号的这种方式
	printf("func:%p &func:%p\n",func,&func);
	//有地址说明是占内存的
	
	//定义一个指针变量指向函数
	//第一个void是返回值类型，第二个void是参数
	void(*func_ptr)(void) = func;
	//直接用函数就调用了
	func_ptr();
	return 0;
}