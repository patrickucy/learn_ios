//
//  main.cpp
//  Demo07_Inheritance
//
//  Created by Yu on 11/18/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <iostream>
using namespace std;


class Parent {
	int i0 = 0;
public:
	int i1 = 10;
protected:
	int i2 = 20;
private:
	int i3 = 30;
};


class Child : public Parent {
public:
	void show(){
//		i0++; //i0 私有的,不可以访问
		i1++;
		i2++;
//		i3++;
		
	}
};


class Child2 : protected Parent {
public:
	void show(){
//		i0++;
		i1++; //把父类的公开权限全部改成了保护权限
		i2++; //
//		i3++;
	}
};

class Child3 : private Parent { //在child3来说什么成员都变成了他自己的私有,不管以后谁来继承都是私有的
public:
	void show(){
		i1 ++;  //把父类的public 改成了private
		i2 ++;  //
	}
};


class Child4 : protected Child2 {
public:
	void show(){
		i1++;
		i2++;
	}
};

class Child5 : Child3 {
public:
	void show(){
//		i1++;
//		i2++;
	}
};



int main(int argc, const char * argv[])
{

	Child c;
//	c.i0;
	c.i1;
//	c.i2;
//	c.i3;
	
	Child2 c2;
	
	Child3 c3;
	
}

