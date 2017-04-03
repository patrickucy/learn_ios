#include <iostream>
#include <string>
using namespace std;

class Skill {
	string name;
public:
	
	//纯虚函数(就是什么都不干的虚函数
	//纯虚函数必须重写,要不然编译不能通过
	//只有纯虚函数的类,不能创建对象,只能被子类们继承
	virtual string getName() = 0;
	
};


class Thunder : public Skill {
public:
	virtual string getName(){
		return "雷霆霹雳";
	}
	
	void recoverHp(){
		cout << "恢复英雄血量" << endl;
	}
};


class Fire : public Skill {
public:
	
	
	virtual string getName(){
		return "火离曜月";
	}
	
	void lastHarm() {
		cout << "持续伤害" << endl;
	}
};


int main(){
	Skill *thunder = new Thunder;
	thunder->getName();
	
	//把父类类型强制转换成了子类的类型
	((Thunder*)thunder)->recoverHp();
	
	
	Thunder *thunder1 = new Thunder;
	thunder1->getName();
	
	thunder1->recoverHp();
	
	
	Fire *fir = new Fire;
	fir->lastHarm();
	
	Fire *fir1 = (Fire*)thunder;
	fir1->lastHarm(); //错误的!!!!编译器没有检测出这种微妙的指针问题
	
	//合法的C的类型转换方式
	Thunder* thunder2 = (Thunder*)thunder;
	
	//这种类型转换是会做检查的,不想上面那个,明明是错的,还是没报错.
	//如果符合转换条件,他就会转换并返回一个对象,如果不符合转换条件,返回NUll
	Thunder* thunder3 = dynamic_cast<Thunder*>(thunder);
	
	if (thunder3) {
		thunder3->recoverHp();
	}
	
	Fire* fire2 = dynamic_cast<Fire*>(thunder);
	if (fire2) {
		//这里就没有打印,因为上面的动态转换知道这种转化是不合法的,自动的把指针设置了NULL,这个if作用域根本没有发生作用
		fire2->lastHarm();
	}
	
	/*
	 虽然上面说明了,动态转换的好处,但是实际上在开发当中还是用的是C的强制转换,这也是C++难的地方了~
	 经常会错
	 */
}









