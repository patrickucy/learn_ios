#include <iostream>
#include <cstdio>
using namespace std;

struct Date { // 如果左边是struct的话,实际上就是一个属性和方法都公开的类

	//属性
	int year;
	int month;
	int day;

public: //虽然属性是私有化,但是函数还是可以使用的,这样子的话,通过调用来改属性值
	//行为,游戏的叫法
	void show() {
		cout << year << '-' << month << '-' << day << '-' << endl;
	}
	
	//这里也就看出来为什么OC要用setter和getter了,因为属性值默认私有,被封装了,通过setter和getter来调用属性
	void set(int y, int m, int d){
		year = y;
		month = m;
		day = d;
	}
	int getYear(){
		return year;
	}
	
};



class Time {
	int hour;
	int min;
	int sec;
public:
	//1.实际上这是个自定义的初始化方法,这是在CPP中不提倡的,提倡使用的是构造方法
	void init(int h, int m, int s){
		hour = h;
		min = m;
		sec = s;
	}
	
	
	
	//2.构造方法,就是cpp下面的初始化方法(自动调用),所以上面这个init方法就不需要了
//	Time(int h = 0, int m = 0,int s = 0){
//		hour = h;
//		min = m;
//		sec = s;
//	}
	
	//3.系统自带的无参构造函数
//	Time(){
//		无参的构造方法,这个就系统自己调用
//	}
	
	//4.构造函数的初始化列表,cpp特有的功能(!使用初始化列表的话,就会先初始化再调用
	Time(int h = 0, int m = 0,int s = 0) : hour(h),min(m),sec(s){
		//其实跟上面的结果是一样的
	}
	
	
	//走一秒,滴答一下
	void dida(){
		sec ++;
		if (sec == 60) {
			sec = 0;
			min ++;
		}
		if (min == 60) {
			min = 0;
			hour ++;
		}
		if (hour == 24) {
			hour = 0;
		}
	}
	
	void show(){
		cout << hour << ":" << min << ":" << sec << endl;
	}
	
	void run(){
		while (1) {
			show();
			dida();
			//这里的代码就是停一秒的意思
			time_t cur = time(0);
			while (cur == time(0));
		}
	}
};


class Example{
	const int ci;
public:
	Example(int c):ci(c){
//		ci = c;
		//上面这个赋值操作是会报错的,为什么呢?因为常量是不可以改变的,然而你使用初始化列表的话就成功通过了,因为是初始化,而且在调用函数体之前执行
		cout << ci << endl;
	}
};

int main(){
	Date date;
	date.year = 2014;
	date.month = 2;
	date.day = 8;
	
	date.set(2014, 2, 8);
	
//	用init方法初始化
//	Time t;
//	t.init(23, 36, 00);
	
//	用构造函数初始化
	Time t(8,30,1);
	
//	Time t;
//为什么这个有报错了呢? 因为构造方法不写不代表没有,实际上你不写构造方法,它自动的调用无参数的默认的内部已写构造方法.
//当你你自己定义了自己的构造函数,这样子声明实例就会报错,因为他找不到自己的默认的那个无参的构造方法
//所以说你也自己再写一个无参的构造方法就好了,反正也能重载
	
//	t.run();
	
	
	
	Time t2; //因为你自己定义个构造方法已经有默认值了,所以再次这里这样声明就不会报错了
	t2.show();
		
	//使用构造函数初始化
	Time t3(15);
	t3.show();
	
	
	//使用初始化列表初始化
	Time t4(9,13,0);
	t4.show();
	
	Example e(50); //你看使用初始化列表的话,就可以既初始化,还可以执行一定的操作
	//你了解一下就好了,还不用得不太多,纯C++还是用得多,因为做游戏的话,还是用得不太多
	
	
}