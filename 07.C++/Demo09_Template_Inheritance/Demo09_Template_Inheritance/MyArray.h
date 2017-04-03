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


template <typename T> //注意这个是typename不是默认给的那个东西
//C++的泛型编程是不允许类的实现和声明分开的,就都放进头文件里面就好了
class MyArray {
//	T data[10];//元素个数限定了十个,数组里面都要这样写,就是都是死的
	T* _data; //创建了一个指针,实际上用途是指向数组首地址的指针
	int _capacity; // 数组的容量
	int _size; // 数组目前已经存放了多少个元素
	
	//扩容的方法应该是私有的,因为是类自己自动的扩自己
	void expandCapacity(){
		_capacity *=2; //每次扩容2倍
		
		//临时变量来保存数组中的元素
		T* temp = new T[_capacity];
		
		////	 循环是一种做法,还有一种是直接使用C的API来实现
		//	for (int i = 0; i < _size; i++) {
		//		temp[i] = _data[i];
		//	}
		
		//参数: 目标 源 大小
		//c的api直接拷
		memcpy(temp, _data, _size * (sizeof(T)));
		
		delete [] _data;
		
		//做这一步的时候就要特别小心了,你创建了新的数组的指针赋给了指针类型的属性,那原来指针属性指的内容并没有销毁,会发生内存泄露
		_data = temp;
	}
public:
	
	//在头文件中不希望有初始化列表
	MyArray(int n = 10){
		_capacity = n;
		_size = 0;
		_data = new T[_capacity];
	}
	
	int size(){
		return _size;
	}
	
	
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
	void push_back(const T& d){
		if (_size == _capacity) {
			//再添加新的元素,证明需要扩容了
			/*>扩容的函数<*/
			expandCapacity();
			//temp new[20];
			//_data 中的数据 拷贝给 temp
			//_data 容量是20 _size 还是10
		}
		
		//这个就是数组最后的位置
		_data[_size] = d;
		_size ++;
	}
	
	
	//从制定位置插入
	bool insert(int pos,const T& d){
		if (pos < 0 && pos > _size) {
			return false;
		}
		if (_size == _capacity) {
			expandCapacity();
		}
		//其实就是 O(n)
		for (int i = _size; i > pos; i--) {
			_data[i] = _data[i-1];
		}
		
		_data[pos] = d;
		_size ++;
		return true;
	}
	
	
	//删除制定位置元素
	bool erase(int pos){
		if (pos < 0 || pos >= _size) {
			return false;
		}
		
		for (int i = pos; i < _size - 1; i++) {
			_data[i] = _data[i+1];
		}
		
		_size --;
		
		
		return true;
	}
	
	
	//删除数组中的元素
	bool remove(const T& d){
		for (int i = 0; i < _size; i++) {
			if (_data[i] == d) {
				erase(i);
				_size --;
				return true;
			}
		}
		return false;
	}
	
	
	//清空
	void removeAll(){
		while (erase(0));
	}
	
	
	//修改指定位置的元素
	bool set(int pos,const T& d){
		if (pos < 0 || pos >= _size) {
			return false;
		}
		_data[pos] = d;
		return true;
	}
	//查找
	int find(const T& d){
		for (int i = 0; i< _size; i++) {
			if (_data[i] == d) {
				return i;
			}
		}
		return -1;
	}
	
	
	
	
	//他实际上还是一个全局函数
	friend ostream& operator<<(ostream& o,const MyArray& arr){
		for (int i = 0; i < arr._size ;i++) {
			o << arr._data[i] << ' ';
		}
		return o;
	}
};


#endif /* defined(__Demo06_Operation2__MyArray__) */
