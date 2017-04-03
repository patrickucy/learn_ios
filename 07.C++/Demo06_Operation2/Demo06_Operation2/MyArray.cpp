//
//  MyArray.cpp
//  Demo06_Operation2
//
//  Created by Yu on 11/13/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include "MyArray.h"
#include <cstring>

void MyArray::_expandCapacity(){
	expandCapacity();
}

//构造函数有了
MyArray::MyArray(int n):_capacity(n),_size(0){
	_data = new T[_capacity];
//	_data = new t[10]; //实际上就是这行代码
	

}

//0 1 2 3
//从尾部插入数据
void MyArray::push_back(const T& d){
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

//扩容方法
void MyArray::expandCapacity(){
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

//友元函数不是类的封装方法,其实是一个全局函数
ostream& operator<<(ostream& o,const MyArray& arr){
	for (int i = 0; i < arr._size ;i++) {
		o << arr._data[i] << ' ';
	}
	return o;
}


/***下面的方法可以自己试试能不能实现***/

//从制定位置插入
bool MyArray::insert(int pos,const T& d){
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
//删除指定位置元素
bool MyArray::erase(int pos){
	if (pos < 0 || pos >= _size) {
		return false;
	}
	
	for (int i = pos; i < _size - 1; i++) {
		_data[i] = _data[i+1];
	}
	
	_size --;
	
	
	return true;
}
//删除数组中指定的元素
bool MyArray::remove(const T& d){
	for (int i = 0; i < _size; i++) {
		if (_data[i] == d) {
			erase(i);
			_size --;
			return true;
		}
	}
	return false;
}
//清空所有元素
void MyArray::removeAll(){
	while (erase(0));
}
//修改指定位置的元素
bool MyArray::set(int pos,const T& d){
	if (pos < 0 || pos >= _size) {
		return false;
	}
	_data[pos] = d;
	return true;
}
//查找
int MyArray::find(const T& d){
	for (int i = 0; i< _size; i++) {
		if (_data[i] == d) {
			return i;
		}
	}
	return -1;
}
