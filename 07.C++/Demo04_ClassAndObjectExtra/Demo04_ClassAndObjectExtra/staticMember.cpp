#include <iostream>
using namespace std;

class Date{
public:
	int y;
	//静态变量属于类,而不是某个对象的,也就是它一直都只有自己的一块内存空间
	static int m;
	
	//成员函数可以调用静态变量
	void show(){
		this->y += 1;
		this->m += 1;
		
		//在普通成员函数,可以调用静态成员函数,就因为他不需要this指针,在哪里都能用
		show_static();
	}
	
	
	//静态成员函数不!可以调用非!静态变量
	static void show_static(){
		//也即是说下面这个不让你用了
//		this->y += 1;
		m += 1;
	}
};

//给静态变量分配内存空间
int Date::m;

int main(){
	Date d1;
	Date d2;
	d1.y = 1954;
	d2.y = 1968;
	d1.m = 12;
	d2.m = 3;
	
	cout << d1.y << endl;
	cout << d2.y << endl;
	cout << d1.m << endl;
	cout << d2.m << endl;
	cout << Date::m << endl;

	
	d1.show();
	//这样子来调用静态函数才是最正确的
	Date::show_static();
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}