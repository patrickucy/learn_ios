#include <iostream>

using namespace std;

struct Date {
	int y,m,d;
	void show(){
		cout << y << '-' << m << '-' << d << endl;
	}
};

int x;
Date d;//对象在全局区
//在C++定义一个对象,其实就当成了一个变量

int main(){
	int x;
	Date d; //对象在栈区
	
	int *p = new int; //在heap中分配int型大小的空间,并把指针赋给p
	
	*p = 123;
	cout << *p << endl;
	
	delete p;   //你要在使用完heap中要记得清楚对应地址的内容
//	机理是,p变量在stack中,作用域结束后,p变量会被回收,然而,开辟的内存空间存的东西还没有删除,所以你要手动删除一下
	
	Date *date = new Date;
	date->y = 2014;
	date->m = 2;
	date->d = 7;
	date->show();
	delete date;
	
	int *pi = new int(10); //这个10就是,分配了内存空间,并直接给这个内存空间初始化了
	cout << *pi << endl;
	
	delete pi;
	
	int *pi_1 = new int[10];//分配了10个int型连续的内存空间,实际上就是数组,
	for (int i = 0; i < 10; i++) {
		pi_1[i] = i;
		cout << pi_1[i] << ' ';
	}
	cout << endl;
	
//	delete pi_1; //这样子只是释放了数组的第一个内存地址的内存空间
	delete [] pi_1; //这样子才是释放了整个数组
	
	
	//定位分配
	char buf[1024] = {};
	//在栈中指定位置,分配空间
	int *pi_2 = new(buf) int(12345); //这样子这个数值就在栈里开辟了空间
	cout << *pi_2 << endl;
	//这里的指针指的东西就不用释放了,因为这个是在栈里开辟的空间,会自动释放,也就是说你不用delete了
	
	
	
	return 0;
	
	
	
	
	
	
	
	
	
}