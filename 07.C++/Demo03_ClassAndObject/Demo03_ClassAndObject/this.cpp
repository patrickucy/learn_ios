#include <iostream>
using namespace std;

class Date{
	int y, m, d;
public:
	Date (int y = 0, int m = 0, int d = 0):y(y),m(m),d(d){
		
	}
	
	void show(){
		//尽量写this指针,其实跟self指针一个道理
		cout << this->y << '-' << this->m << '-' << this->d << endl;
	}
};


class Employee{
	string name;
	int age;
public:
	void setName(string name){
		//这里一定要用this,因为两个变量名字是一样的,因为局部优先原则
		this->name = name;
	}
	
	void setAge(int age){
		this->age = age;
	}
	
	void show(){
		cout <<  this->name << endl;
		cout <<  this->age	<< endl;
	}
	
	
//	Employee& growUp(){ //这里加与不加&会有很大的区别!!!!!!!

	//这样子就返回了一个新的对象,而不是当前的引用了,所以只涨了一岁, 只有当定义成上面这个 & 变成引用了才会返回原来的本身对象
	Employee growUp(){
		age ++;
		return *this;
	}
};


int main(){
	Date d(2014,2,8);
	d.show();
	
	Date d1(2016,1,2);
	d1.show();
	
	Employee em;
	//对象时点语法调用函数
	em.setName("zhangxiang");
	em.setAge(35);
	em.show();
	
	//这个growUp()返回值不同,操作起来是很不同的,很多小细节需要注意
	em.growUp().growUp().growUp().growUp();
	em.show();

	
}