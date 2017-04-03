//
//  main.cpp
//  Demo01_Hello_CPP
//
//  Created by Yu on 10/7/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

//input/output Stream, CPP中头文件没有.h
//头文件的本质是一个文本,include的作用实际上就是把文本copy到目前位置
//自己写的类就加.h,使用CPP标准库的时候就不用.h
#include <iostream>
//如果在CPP中写C的程序,include C 方式
//#include <stdio.h>
//在CPP中使用C时,有CPP自己的方式,如下(而且还会自己提示) 也就是加个前缀c然后还是c自己的头文件名,并且去掉后缀
#include <cstdio>
#include <cstdlib>

int main(int argc, const char * argv[])
{

	//::双冒号就是一个运算符,叫做域运算符,代表着cout在std的命名空间下
	std::cout << "Hello, My first C++\n";
	std::cout << rand() << "\n";
	int x;
	double y;
	char name[20];
	std::cin >> x >> y >> name;
	
	std::cout << x <<"\n" << y <<"\n"<< name << std::endl;
    return 0;
}

