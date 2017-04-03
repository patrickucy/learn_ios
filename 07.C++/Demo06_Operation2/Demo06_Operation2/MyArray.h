//
//  MyArray.h
//  Demo06_Operation2
//
//  Created by Yu on 11/13/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//
/*
 写一个数组类,功能类似于OC中的NSMutableArray
 1.可以无限的添加元素
 2.和数组一样,元素是连续存放的
 */


#ifndef __Demo06_Operation2__MyArray__
#define __Demo06_Operation2__MyArray__

#include <iostream>

using namespace std;

//这样子改了之后,你就可以想用什么类型的数组就可以自己创建什么类型的数组了,其实就是泛型
typedef int T;

class MyArray {
//	T data[10];//元素个数限定了十个,数组里面都要这样写,就是都是死的
	T* _data; //创建了一个指针,实际上用途是指向数组首地址的指针
	int _capacity; // 数组的容量
	int _size; // 数组目前已经存放了多少个元素
	
	//扩容的方法应该是私有的,因为是类自己自动的扩自己
	void expandCapacity();
public:
	MyArray(int n = 10);
	
	int size(){
		return _size;
	}
	
	
	//这样子就把上面的私有的方法给封装起来了,当你有多个扩容方法的时候,这个接口就只能起到接口的作用
	void _expandCapacity();
	
	//这个运算符的重载才是整个项目的目的!!!!!!!!!!!!!
	T& operator[](int pos){ //因为代码量很小所以可以把实现直接写在头文件,这个时候实际上是inline 函数
		return _data[pos];
	}
	
	
	T& operator[](double pos){ //因为代码量很小所以可以把实现直接写在头文件,这个时候实际上是inline 函数
		return _data[(int)(pos+0.5)];
	}
	
	T& operator[](char ch){ //因为代码量很小所以可以把实现直接写在头文件,这个时候实际上是inline 函数
		return _data[ch - 'a'];
	}
	
	//往数组的尾部插入数据
	void push_back(const T& d);
	//从制定位置插入
	bool insert(int pos,const T& d);
	//删除制定位置元素
	bool erase(int pos);
	//删除数组中的元素
	bool remove(const T& d);
	//清空
	void removeAll();
	//修改指定位置的元素
	bool set(int pos,const T& d);
	//查找
	int find(const T& d);
	
	
	
	
	//他实际上还是一个全局函数
	friend ostream& operator<<(ostream& o,const MyArray& arr);
};


#endif /* defined(__Demo06_Operation2__MyArray__) */
