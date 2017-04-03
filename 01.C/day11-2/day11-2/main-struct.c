//
//  main.c
//  day11-2
//
//  Created by Patrick Yu on 6/8/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//	结构体类型

#include <stdio.h>
#include <string.h>

//6.结构体类型起别名的另一种形式，最终形式（这样就能被所有的函数调用了）
typedef struct STUDENT2 {//可以删除这个名称只保留下面Student2这个别名
	char name[20];
	int age;
}Student2;//可以放在头文件！多文件共享

int main(int argc, const char * argv[])
{
	//1.定义一个结构体
	struct {//结构体相当于一个数据类型，并不占用内存，有变量了则开辟了内存空间
		char name[20];
		int age;
	}student1={"zhangsan",18},student2={"lisi",20}; //结构体的初始化
				
	//2.输出数值
	printf("student1 name:%s age:%d\n",student1.name,student1.age);
	printf("student2 name:%s age:%d\n",student2.name,student2.age);
	
	//3.可以在代码中多次定义结构体，虽然内容一样，但编译器认为两个结构体是不一样的。
	struct {
		char name[20];
		int age;
	}student3 ={"wangwu",19};
	printf("student3 name:%s age:%d\n",student3.name,student3.age);

	//4.定义结构体类型
	struct STUDENT{
		char name[20];
		int age;
	};
	
	struct STUDENT student4 ={"zhangsan",16};
	printf("student4 name:%s, age:%d\n",student4.name,student4.age);
	
	//5.结构体类型起别名
	typedef struct STUDENT Student;
	Student student5 = {"qianqi",17};
	printf("student5 name:%s, age:%d\n",student5.name,student5.age);
	
	//7。
	Student2 student6 = {"guanyu",38};
	printf("student6 name:%s, age:%d\n",student6.name,student6.age);
	
	student2.age =20;
	//student2.name = "zhangfei";
	Student2 student7 = student6;
	strcpy(student2.name, "zhangfei");
	printf("student6 name:%s age:%d\n",student7.name,student7.age);

	
	
    return 0;
}

