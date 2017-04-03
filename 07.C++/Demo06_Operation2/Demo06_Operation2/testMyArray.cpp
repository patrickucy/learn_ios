#include <iostream>
#include "MyArray.h"

using namespace std;

int main(){
	MyArray arr; //没有传参数, 默认容量 10个元素容量
	arr.push_back(1);
	arr.push_back(8);
	cout << arr << endl;
	for (int i = 0; i< 31; i++) {
		arr.push_back(i);
	}
	arr.insert(1, 9900);
	
	cout << arr << endl;

	arr.erase(1);
//	arr.removeAll();
	cout << endl;

	cout << arr.find(21) << endl;
	cout << arr << endl;
	
	
//	arr.removeAll();
	cout << arr << endl;
	
	
	//这样才是整个项目的目的
	//虽然你上面实现了arr的各种功能,但是真正的目的是 arr[0] = 300; 这种使用是不行的,你必须要友元函数来重载[]这两个符号
	arr[0] = 300;
	cout << arr << endl;

	arr[3.1] = 500;
	cout << arr << endl;

	arr[3.7] = 800;
	cout << arr << endl;

	
	arr['c'] = 20000;
	cout << arr << endl;
	
	return 0;
}