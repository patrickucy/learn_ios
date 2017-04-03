//
//  main.cpp
//  Demo06_Operation2
//
//  Created by Yu on 11/10/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <iostream>
using namespace std;

class F {
	int n; //分子
	int d; //分母
public:
	
	
	//构造方法
	F(int n = 1,int d = 1): n(n),d(d){
		
	}
	
	//下面这个是友元函数:也就是这个函数可以access类中的私有变量
	friend ostream& operator<<(ostream& cout, F& f);
	
	
	//这里虽然友元函数写在了类里面,但实际上还是一个全局函数,并不是类的方法
	friend istream& operator>>(istream& cin,F& f){
		char ch;
		cin >> f.n >> ch >> f.d;
		return cin;
	}
	//真正的调用的时候并不需要通过对象来调用,一样可以独立的调用
};



//class ostream {
////这个对象就是为什么你的cout<< 可以打印东西
//public:
//返回值类型还是ostream
//	ostream& operator << (int i){}		//把这个int打印出来
//	ostream& operator << (char ch){}
//	ostream& operator << (float f){}
//上面这些函数都重载了
//};
// 上面的这个类是C++自己的标准类,是不允许修改的


ostream& operator<<(ostream& cout, F& f){ //cout就是ostream类型,
	cout << f.n << "/" << f.d << endl;
	return cout;
}




//CCPoint + CCPoint //下面运算符重载了之后就很方便对象与对象之间的操作了
//CCPoint addPoint(CCPoint point1,CCPoint point2){
//	return CCPoint(point1.x + point2.x,point1.y + point2.y);
//}
//
//point 1 + point2;

int main(int argc, const char * argv[])
{
	F f1(1,2);
	cout << f1 << endl;
	int x = 10;
	
	cout << x << endl;;
	//实际上上面和下面这两个代码是一模一样的,这样子就构成了运算符的重载
	cout.operator<<(x) << endl;
	
	
	char ch = 'd';
	cout << ch << endl;
	
	cout << "please input a fraction" << endl;
	cin >> f1;
	//	operator>>(cin,f1);
	cout << f1;
	
}




