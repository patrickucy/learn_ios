#include <iostream>
using namespace std;

class Animal {
public:
	virtual void eat(){
		cout << "Animal eat" << endl;
	}
	
	void sleep(){
		cout << "Animal sleep" << endl;
	}
	
};


class Dog : public Animal {
public:
	//重写(覆盖) 与隐藏 的概念
	//这样子并不是重写了父类的方法,只有当父类的这个函数写成了虚函数,这样子写才是重写父类的函数
	virtual void eat(){ //这里的virtual 关键字虽然没有起到什么作用,但是,一旦有子类继承这个类,那么下面那个子类就可以直接重写这个方法了
		cout << "Dog eat" << endl;
	}
	
	void sleep(){
		cout << "Dog sleep" << endl;
	}
};


class Cat : public Animal {
public:
	//重写(覆盖) 与隐藏 的概念
	//这样子并不是重写了父类的方法,只有当父类的这个函数写成了虚函数,这样子写才是重写父类的函数
	virtual void eat(){ //这里的virtual 关键字虽然没有起到什么作用,但是,一旦有子类继承这个类,那么下面那个子类就可以直接重写这个方法了
		cout << "Cat eat" << endl;
	}
	
	void sleep(){
		cout << "Cat sleep" << endl;
	}
};

void feed(Animal *pa,string food){
	pa->eat();
	cout << food << endl;
}


int main() {
	Dog d;
	d.eat();
	d.sleep();
	
	Animal *a = new Animal;
	a->eat();
	a->sleep();
	
	Animal *a1 = new Dog;
	//父类指针调用的就是父类的方法,
	a1->eat();
	a1->sleep();//这个还是父类调用的方法
	
	
	Animal& a2 = d;
	a2.eat();
	
	
	Animal a3 = d;
	a3.eat();
	
	
	Animal *a4 = &d;
	a4->eat();
	
	
	Animal *a5 = new Cat;
	a5->eat();
	
	
	feed(&d, "bone");
	feed(a5, "fish");
	
	
	return 0;
}















