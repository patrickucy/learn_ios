#include <iostream>
using namespace std;


#ifndef Template_print_h
#define Template_print_h


template <typename T>
void print(T b, T e) {
	while (b != e) {
		cout << *b << " ";
		b++;  //这个就是操作指针去下面一个元素去找
	}
	cout << endl;
}


#endif