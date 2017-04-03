#include <iostream>
#include <cstdio>
using namespace std;

struct Date {
	int year;
	int month;
	int day;
	void show(){
		cout << year << '-' << month << '-' << day << endl;
	}
	void set(int y, int m, int d){
		year = y;
		month = m;
		day = d;
	}

	
	void set_1(int y, int m){
		year = y;
		month = m;

	}
	
	void set1(int y, int m,int d){
		year -= y;
		month -= m;
		day -= d;
	}
	
};


//通过typedef 来声明一个成员函数指针 类型,然后下面的函数就可以直接把成员函数指针当成SET类型了,然后直接传 变量
typedef void (Date::*SET)(int,int,int);
typedef void (Date::*SET_1)(int,int);


void invoke(Date& target, SET s){
	//调用Date 里面的set方法
	(target.*s)(2014, 8, 8);
	
}


#define function_selector(_SELECTOR) (&_SELECTOR)
//function_selector(_SELECTOR) = &_SELECTOR; 上面这个宏实际上就是这行代码的意思


int main(){
	void (*f1)(); // C中的函数指针
	void (Date::*f)(); // 结构体的成员函数指针
	f = &Date::show; // 直接传函数名就是把函数的指针的地址(记得取地址符) 给传出去, 可以说函数名加() 表示的是调用这个函数
	
	Date d = {2014,2,8};
	//下面这两个其实也是一样的
	d.show();
	(d.*f)(); // d.*f() 这两种调用的方式是不同的,左边的是先通过指针取函数的,然后调用函数, 注释里面的是取d里面的成员再调用指针,
	
	
	//这个地方是难点!!!!!
	Date *p = &d;
	
	//下面这两个是一样的
	p->show();
	(p->*f)();
	
	
	
	//成员函数指针的调用
	invoke(d, &Date::set);
	d.show();
	
	invoke(d, &Date::set1);
	d.show();
	
	
	//这个就是OC里面的button回调是怎么实现的呢?就是这样子实现的,所以这个selector实际上就是一个定义了的宏
	//加了上面的那个宏之后,下面这个就不会报错了,看起来是一个函数(function_selector(Date::set)),实际上就是一个成员函数指针的
	//上面两个成员函数指针的调用只是为了将原理,实际上在OC中见得最多的就是下面的这行代码
	//这里就是CPP比较难的一个点
	//游戏里面用得很多,因为游戏里面没有button这种提供好的API,所以就要自己写API,也就是为什么下面这个就用得很多了
	invoke(d, function_selector(Date::set));
	d.show();
	
	return 0;
}