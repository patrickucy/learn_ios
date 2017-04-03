//
//  main5-void*.c
//  day12-union
//
//  Created by Patrick Yu on 6/9/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <stdio.h>
typedef  enum{
	INT,SHORT,CHAR
} type;

void print(void* p,type t){//这里的y变成了枚举类型，这样就只能是上面的3种类型，不能是其他类型
	switch (t) {
		case INT:
			printf("%d\n", *((int*)p)); //类型强制转换之后变成了另一种指针，并寻址成指向的值
			break;
		case SHORT:
			printf("%d\n", *((short*)p)); //类型强制转换之后变成了另一种指针，并寻址成指向的值
			break;
		case CHAR:
			printf("%c\n", *((char*)p)); //类型强制转换之后变成了另一种指针，并寻址成指向的值
			break;
	}
}
int main(){
	int i = 10;
	short s =20;
	char c= 'a';
	print(&i,INT);
	print(&s, SHORT);
	print(&c, CHAR);
	return 0;
}