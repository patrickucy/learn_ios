#include <iostream>
#include "Time.h"
#include <ctime>
using namespace std;

//函数的默认值在cpp中是不用给的,在头文件中直接给
Time::Time(int h , int m ,int s ) : hour(h),min(m),sec(s){
	//其实跟上面的结果是一样的
}
	
	
void Time::dida(){
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

void Time::show(){
	cout << hour << ":" << min << ":" << sec << endl;
}

void Time::run(){
	while (1) {
		show();
		dida();
		//这里的代码就是停一秒的意思
		time_t cur = time(0);
		while (cur == time(0));
	}
}
