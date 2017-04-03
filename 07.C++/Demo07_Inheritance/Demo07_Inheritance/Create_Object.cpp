#include <iostream>
#include <string>
using namespace std;

/*
 创建对象的过程:
 1. 分配内存空间
 2. 递归的创建父类对象
 3. 如果成员变量是对象, 创建他
 4. 调用对象的构造方法
 */




class Parent {
public:
	Parent(){
		cout << "Parent()" << endl;
	}
	
	~Parent(){
		cout << "~Parent()" << endl;
	}
};

class Child : public Parent{
public:
	Child(){
		cout << "Child()" << endl;
	}
	
	~Child(){
		cout << "~Child()" << endl;
	}
};


class Child1 : public Child{
public:
	Child1(){
		cout << "Child1()" << endl;
	}
	
	~Child1(){
		cout << "~Child1()" << endl;
	}
};



int main(){
	//通过这个子类的创建,你就会发现类的继承的构造析构的方法,实际上就是通过stack的形式创建销毁的
	Child1 c;
	
	return 0;
}