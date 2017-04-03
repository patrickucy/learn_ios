#include <iostream>
using namespace std;



class Employee{
	mutable string name;
	int age;
public:
	//构造函数
	Employee(string name, int age):name(name),age(age){
	}
	
	//析构函数
	~Employee(){
		cout << name << "name is destroyed" << endl;
	}
	
	
	void setName(string name){
		//这里一定要用this,因为两个变量名字是一样的,因为局部优先原则
		this->name = name;
	}
	
	string getName() const{
		//在这个const 函数里面不能修改属性,如果这个属性本身是mutable的话,那就还是可以修改的
		this->name = "Changed";
		return this->name;
	}
	
	void setAge(int age){
		this->age = age;
	}
	
	
	//我们在函数的方法名后面加const的话,即使对象时常量(不可修改)对象也可以调用函数了
	//但是,一旦声明了这个函数为后缀const,你偷偷改了属性,会报错!!!
	//后缀const 就代表这个函数是只读的
	//所以以后有个函数如果只做只读操作(不更改任何属性)那么它就给个const后缀,只读非只读对象都可以调用
	//因为这个函数是只读的,后面调用的时候,如果是只读的对象就调用它
	void show() const{
		cout <<  this->name << endl;
		cout <<  this->age	<< " years old"<< endl;
	}
	
	//这是一种特殊的重载
	//如果这个函数是没有任何声明的,后面的调用的时候,就是非只读的对象调用它
	void show(){
		cout <<  this->name << endl;
		cout <<  this->age	<< " years old after 3 years"<< endl;
	}
	
	//	Employee& growUp(){ //这里加与不加&会有很大的区别!!!!!!!
	
	//这样子就返回了一个新的对象,而不是当前的引用了,所以只涨了一岁, 只有当定义成上面这个 & 变成引用了才会返回原来的本身对象
	Employee growUp(){
		age ++;
		return *this;
	}
};



int main(){
	const Employee e("changyou",24);
	e.show();
	e.getName();
	
	
	Employee e1("changyou",24);
	e1.setName("smart ass");
	e1.show();
	e1.getName();
	
	//作用域结束了,栈也就结束了,最后也就销毁了,你发现后创建的先出来了,前创建的后销毁了,因为毕竟是栈,系统栈
	
	
	
	
	
}