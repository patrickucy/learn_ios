#include <iostream>

using namespace std;


//结构在CPP中,就是类
struct Date {
	int year; //成员变量(就相当于OC的属性)
	int month;
	int day;
	
	//在结构中添加函数,这是在C中是不允许的
	void show(){
		cout << year << '-' << month << '-' << day << endl;
	}
	
};

void fa(Date d){
	d.day ++;
	d.show();
}

void fb(Date *d){
//	这种写法可以不推荐
//	(*d).day++;
//	这种指针的取值方法是推荐使用的
	d-> day++;
	d-> show();
}

Date fc(){
	return Date();
}

Date* fd(){
	return NULL;
}


int main(){
//	struct Date d; //创建一个结构体变量,这个是C的定义方式
//	存在stack里面,不是heap
//	实际上就当成class的来定义
	Date d = {2014,2,7};
//	结构体的函数调用是用[点]语法来调用的 (跟Swift很像这里也)
	d.show();
	
//	下面这个是指针调用方法,一般情况下就是对象调用这个方法
//	Date *d2 = new Date();
//	d2 -> show();
	
	
	Date d2;
	d2.year = 2014;
	d2.month = 10;
	d2.day  =23;
	d2.show();
//	从上面可以看出,实际上结构体跟class没什么很大的区别
	
//	这个函数是值传递,会把参数复制一份,然后加加,把复制后的copy再显示出来
	fa(d);
	
//	你以为下面这个函数会自动加加,实际上并没有,因为这个是把地址传过来了,也就是2014-2-7,然后再++,所以变成了2014-2-8
	fb(&d);
	
	fa(d);
	return 0;
}

















