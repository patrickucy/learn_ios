#include <iostream>
#include <string>
using namespace std;

class Enemy {
protected:
	string name;
public:
	Enemy() {
		cout << "Enemy no-parameter constructor is called" << endl;
	}
	
	Enemy(string name):name(name){ //构造方法直接初始化
		cout << "Enemy constructor with parameter called" << endl;
	}
	
	
	void attack(){
		cout << "attack" << endl;
	}
				
	void idle(){
		cout << "hold" << endl;
	}
	
	string getName(){
		return name;
	}
	
	
};

class DemonArrow : public Enemy {

public:
	//***************

//	DemonArrow() : Enemy(){
//		//从这个构造方法可以看出,这个子类的构造方法会自动的先调用父类的无参构造方法,然后再调用自己的构造方法
//		//这个是无参的构造方法
//		cout << "Demon Arrow no-parameter constructor is called" << endl;
//	}
	
	
	//其实这种构造方法是最多的,而不是上面的
	DemonArrow() : Enemy("Demon Arrow"){
		
	}
	
	
	//这里要求子类跟父类一样也要传进去一个对应类型的参数
	DemonArrow(string name) : Enemy(name){ //这里的初始化列表相当于一个super init
		//其实这里的constructor 是先调用父类的 constructor 然后再调用子类自己的constructor
	}
	
	
	
	//***************

};



int main(){
	
	DemonArrow demon;//子类会在创建的时候先调用父类的构造方法,如果子类是空参的构造方法,就会调用父类的空参的构造方法.如果子类是有参数的构造方法,则会调用父类的有参构造方法,如果对应不上就会报错
	demon.attack();
	demon.idle();
	cout << demon.getName() << endl;
	
	
	
	DemonArrow d1("Demon Arrow");
	d1.attack();
	d1.idle();
	cout << d1.getName() << endl;
	
	
	
	
}