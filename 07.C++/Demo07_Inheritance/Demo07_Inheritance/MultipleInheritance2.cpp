#include <iostream>
using namespace std;

/*
 虚继承
 因为多继承会出现二义性
 */


class Enemy {
	int hp;
public:
	Enemy(int hp):hp(hp){
		cout << "Enemy Constructor" << endl;
	}
	int getHp(){
		return hp;
	}
};

class Crow : virtual public Enemy {
public:
	
	Crow(int hp):Enemy(hp){
		cout << "Crow Constructor" << endl;
		
	}
	
	
	void fly(){
		cout << "fly" << endl;
	}
};


class Boar : virtual public Enemy {
public:
	Boar(int hp):Enemy(hp){
		cout << "Boar Constructor" << endl;
		
	}
	
	
	void defense(){
		cout << "Defense" << endl;
	}
	
};


class Monkey : virtual public Enemy {
public:
	Monkey(int hp):Enemy(hp){
		cout << "Monkey Constructor" << endl;
		
	}
	
	void AI(){
		cout << "Think" << endl;
	}
};


class Boss : public Crow, public Boar, public Monkey {
	//Boss的血量还没有设置
public:
	//这里的敌人必须要初始化,要不然会报错,因为你上面虚继承,(在游戏中虚继承其实并不多)
	Boss():Crow(10),Boar(100),Monkey(30) , Enemy(10000){
		cout << "Boss Constructor" << endl;
		
	}
	
	int getHp(){
		//点调用是类外的调用方法,下面这样子才是子类调用父类的方法
		return Enemy::getHp();
	}
};



int main(){
	Boss b;
	b.fly();
	b.defense();
	b.AI();
	cout << b.getHp() << endl;
	
	
	return 0;
	
	//看了结果你就发现,这种情况,多重继承,分别创建了3个enemy父类
}























