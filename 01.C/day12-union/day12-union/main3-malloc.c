//
//  main3-malloc.c
//  day12-union
//
//  Created by Patrick Yu on 6/8/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
void mallocTest(){
	//分配堆内存
	int* const p_num = malloc(sizeof(int)*3);
	printf("p_num address:%p\n",p_num);
	
	//判断分配内存是否成功
	if (p_num) {
		//原来的方式保存三个整数
		int array[3] = {0};
		printf("array address:%p\n",array);
		for (int i =0; i<3; i++) {
			printf("please input a num:\n");
			scanf("%d",&array[i]);//也可以直接放进堆内存中
								  //数组中的值保存到堆内存中
			*(p_num+i) = array[i];//指针可以加减运算，变化量是对应类型的字节数
		}
		
		//数组保存的值
		for (int i =0 ; i<3; i++) {
			printf("array[%d]:%d\n",i,array[i]);
		}
		//得到指针所保存的值
		for (int i = 0; i<3; i++) {
			printf("p_num+%d:%d\n",i,*(p_num+i));
		}
		
	}
	//释放内存
	free(p_num);

}

void callocTest(){
	//分配堆内存
	int* const p_num = calloc(3, sizeof(int)); //就是语法不同而已
	printf("p_num address:%p\n",p_num);
	
	//判断分配内存是否成功
	if (p_num) {
		//原来的方式保存三个整数
		int array[3] = {0};
		printf("array address:%p\n",array);
		for (int i =0; i<3; i++) {
			printf("please input a num:\n");
			scanf("%d",&array[i]);//也可以直接放进堆内存中
								  //数组中的值保存到堆内存中
			*(p_num+i) = array[i];//指针可以加减运算，变化量是对应类型的字节数
		}
		
		//数组保存的值
		for (int i =0 ; i<3; i++) {
			printf("array[%d]:%d\n",i,array[i]);
		}
		//得到指针所保存的值
		for (int i = 0; i<3; i++) {
			printf("p_num+%d:%d\n",i,*(p_num+i));
		}
		
	}
	//释放内存
	free(p_num);
}

void reallocTest(){
	//分配堆内存
	int*  p_num = calloc(3, sizeof(int)); //就是语法不同而已
	
	printf("p_num address:%p\n",p_num);
	int* p_num_new= realloc(p_num, sizeof(int)*100);//最好不要赋值给原来的地址，成功了再赋值，而且这里的新地址跟老地址都可能是新的
	printf("p_num_new address:%p\n",p_num_new);
	
	//判断分配内存是否成功
	if (p_num_new) {
		//原来的方式保存三个整数
		
		p_num = p_num_new; //这样后面释放内存空间的时候就不会释放新空间后忘了释放老的空间
		int array[3] = {0};
		printf("array address:%p\n",array);
		for (int i =0; i<3; i++) {
			printf("please input a num:\n");
			scanf("%d",&array[i]);//也可以直接放进堆内存中
								  //数组中的值保存到堆内存中
			*(p_num + i) = array[i];//指针可以加减运算，变化量是对应类型的字节数
		}
		
		//数组保存的值
		for (int i =0 ; i<3; i++) {
			printf("array[%d]:%d\n",i,array[i]);
		}
		//得到指针所保存的值
		for (int i = 0; i<3; i++) {
			printf("p_num+%d:%d\n",i,*(p_num + i));
		}
	}
	//释放内存
	free(p_num);
}

int main()
{
	reallocTest();
	return 0;
}