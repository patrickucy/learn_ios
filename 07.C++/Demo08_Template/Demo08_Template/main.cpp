//
//  main.cpp
//  Demo08_Template
//
//  Created by Yu on 11/20/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <iostream>
#include <typeinfo>
using namespace std;

class Person {
	
};

class A {
	int x;
public:
	virtual void show(){
		//就虚函数就好了
	}
};

class B : public A {
	
};

class C : public B {
public:
	virtual void show() {
		cout << "C" << endl;
	}
};


class D : public B {
public:
	
};

void type(A* p){
	if (typeid(*p) == typeid(A)) {
		cout << "对象是A类型" << endl;
	}else if(typeid(*p) == typeid(B)){
		cout << "对象是B类型" << endl;
	}else if(typeid(*p) == typeid(C)){
		cout << "对象是C类型" << endl;
	}else if(typeid(*p) == typeid(D)){
		cout << "对象是D类型" << endl;
	}
}

int main(int argc, const char * argv[])
{
	const type_info& info = typeid(Person);
	
	cout << info.name() << endl;
	
	cout << typeid(string).name() << endl;;
	
	A* p1 = new B;
	A* p2 = new C;
	A* p3 = new D;
	
	type(p1);
	type(p2);
	type(p3);

	
    return 0;
}

