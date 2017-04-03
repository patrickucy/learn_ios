#include <iostream>
using namespace std;

class Date {
	
	int y,m,d;
	

public:
	
	Date(int y = 2000 , int m = 7,int d = 12):y(y),m(m),d(d){
		//构造函数是创建对象的最后一步,也就是说内存空间已经分配好了,所以这里调用this是没有问题的
		cout << "Date(i,i,i)" << this << endl;
	}
	
	Date(const Date &d){
		cout << "Date copy constructor " << endl;
		this->y = d.y;
		this->m = d.m;
		this->d = d.d;
	}
	
	~Date(){
		cout << "~Date()" << this << endl;
	}
	
	string toString(){
		char buf[20];
		sprintf(buf, "%04d-%02d-%02d",y,m,d);
		return buf;
	}
};

void fa(Date d){
	//值传递,会创建新的局部对象,会调用拷贝构造函数
	//在作用域里面又创建了一个新的d,所以调用了拷贝构造函数

}

void fb(Date& d){
	//引用传递,传进来的是对象的本身,没有创建新的对象,所以不会调用拷贝构造函数
	//不会调用拷贝构造函数

}

//***************实际上这个方式才是用得最多的***************
void fc(Date* p){
	//地址传递,是传得对象的地址,没有创建新的对象,所以不会调用拷贝构造函数
}

Date fd(Date &r){
	
	
//	传进来的时候的确没有创建新的对象,但是return的时候是会调用拷贝构造函数的
//	当没有任何变量接受他的时候,编译器就会立刻销毁了,如果有接受者就不会销毁
	return r;
}

Date& fe(Date& r){
//	这里就把对象本身又给返回回去了,所以没有创建新对象,也就是没有调用拷贝构造函数
	return r;
}

int main(){
	
//	Date d = {2014,,10,19};
//	这两种初始化的方式是没有区别的
	Date d(2014,10,19);
	
	cout << "1----------------" << endl;
	fa(d);
	
	cout << "2----------------" << endl;
	fb(d);
	
	cout << "3----------------" << endl;
	fc(&d);
	
	cout << "4----------------" << endl;
	Date d2 = fd(d); //临时的返回对象,这种形式就当成赋值就好了
	
	cout << "5----------------" << endl;
	Date& d3 = fe(d);
	
	cout << "6----------------" << endl;
	Date ds[3] = {d,d2,d3};
	
	cout << "7----------------" << endl;

	
}