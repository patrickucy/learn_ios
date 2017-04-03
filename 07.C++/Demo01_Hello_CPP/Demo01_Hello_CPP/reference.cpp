#include <iostream>

using namespace std;

int main(){
	int x = 100;
	int &r = x; //r就是x的别名,r是引用,引用就是别名
	
	cout << &x << ',' << &r << endl;
	int y = 300;
	//****特别注意这里的含义***
	r = y ;//??????这句话的实际意义是 赋值 而不是更改引用,引用一旦引用了就不能改变了,但是指针是可以变的
	y += 10;
	cout << r << endl;
	cout << x << endl;
	
	int &r2 = r; //别名的情况下再起别名
//	r2 r x 实际上共用的是同一块内存地址
//	引用必须初始化,要不然会报错,也就是必须赋个值
	
	//不能给常量起别名,除非加了一个const变成常量,这样就可以起别名了
//	可以用常引用
	const int &r4 = 100;

	
	return 0;
}