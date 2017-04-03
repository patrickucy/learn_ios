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
	
	
	/*同一个运算符重载,理论上 成员函数 或 友元函数 只能存在一个(用友元函数更好)*/
	
	
	//真正的调用的时候并不需要通过对象来调用,一样可以独立的调用
	//友元函数的运算符重载
	friend F operator+(const F& f1, const F& f2);
	
	
	//成员函数的运算符重载
	F operator+(const F& f2){
		F f(this->n * f2.d + this->d * f2.n, this->d * f2.d);
		return f;
	}
};


ostream& operator<<(ostream& cout, F& f){ //cout就是ostream类型,
	cout << f.n << "/" << f.d << endl;
	return cout;
}


F operator+(const F& f1, const F& f2){
	//这里传进来的是两个对象的引用,加const的意思是不要对这个两个对象本身内部的数据进行改变,而是独立于他们内部数据的改变
	F f(f1.n * f2.d + f1.d * f2.n, f1.d * f2.d);
	return f;
}




int main(){
	
	F f1(1,2);
	F f2(2,3);
	//这样一来加号运算符重载了,友元函数
	F f3 = f1 + f2;
	//这样输出运算符重载了
	cout << f3 << endl;
	
	F f4 = f1.operator+(f2);
	cout << f4 << endl;

	// 假设你上面的友元函数被注释了,下面这个表达方式还是可以用的,这个时候调用的就是成员函数!!!
	// 如果你友元函数,成员函数的运算符重载都有的话,编译器会默认进入到成员函数,而友元函数根本没有用到,也就是说优先进入成员函数,若没有则进入友元函数
	F f5 = f1 + f2;
	// 成员函数调用 f1.operator+(f2);
	// 友元函数调用 operator+(f1,f2);

	return 0;
}