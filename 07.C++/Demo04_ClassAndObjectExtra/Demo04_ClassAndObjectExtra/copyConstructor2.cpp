#include <iostream>
using namespace std;

class Date {

	int y,m,d;
	
	void showMonth(){
		cout << "m= " << m << endl;
	}
public:
	
	Date(int y = 2000 , int m = 7,int d = 12):y(y),m(m),d(d){
		//构造函数是创建对象的最后一步,也就是说内存空间已经分配好了,所以这里调用this是没有问题的
		cout << "Date(i,i,i)" << this << endl;
		showMonth();
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

class Employee{
	string name;
	Date* birthday;
public:
	Employee(string name, int year, int month, int day):name(name){
		//这样子就是在heap中释放的,所以要手动释放
		birthday = new Date(year,month,day);
	}
	
	//拷贝构造函数
	//!!!!!!!!什么时候自己写拷贝构造函数呢?就是当对象里面存在有指针类型的属性的时候,需要自己手动的写
	Employee(const Employee& e){
		this->name = name;
		
		//这里指的是,把e1的指针赋值给了e2,指向了同一块内存地址,并没有复制一个一模一样的内容赋值过去,这样子在析构的时候会出现析构同一个内存空间的问题
		
//		this->birthday = e.birthday;
		//你下面这个干,整个类的属性就没办法私有了
		this->birthday = new Date(*e.birthday);
		
//		Date* d;
//		Date* d3 = new Date(*d);
	}
	
	~Employee(){
		//!!!也就是说不能释放一个没有内容的内存地址空间
		delete birthday; //指针的对应的内存中间被释放,但是指针变成空指针了
		birthday = NULL; //指针也要释放
		//因为这个对象时在heap里面创建的,所以需要手动在析构函数里面把它给删了
		cout << "~Employee()" << this << endl;
	}
	
	void show(){
		cout << name << "的生日是" << birthday->toString() << endl;
	}
};


int main(int argc, const char * argv[])
{
	Employee e1("changyou",2012,10,28);
	e1.show();

//	cout << "e1 = " << &e1 << endl;
	//这里使用的是拷贝构造函数很有问题
	Employee e2 = e1;
	e2.show();
	
	
	
	
	
	
	
	
	
	
	
}
