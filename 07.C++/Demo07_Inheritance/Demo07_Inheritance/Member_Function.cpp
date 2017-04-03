#include <iostream>
using namespace::std;

class Enemy{
public:
	void attack(){
		cout << "Enemy attack" << endl;
	}
	void idle(){
		cout << "Enemy idle" << endl;
	}
};



//继承的时候没有标明的话就是私有继承!!!!!所以要标明公开继承
class DemonArrow : public Enemy{
public:
	//这里没有重写父类的方法
	//名字隐藏,注意,这里!!不是!!重写(重写和覆盖是一样的),只是由于父子类方法名相同,所以把父类的方法隐藏了
	//要求方法名字相同,(即使参数不同,父类方法也会隐藏),子类就会自动把父类相同名字的方法给隐藏一起来,当然这个过程不是重写了父类的方法
	void attack(){
		cout << "Demon Arrow attack" << endl;
	}
	void idle(int sec){
		cout << "Demon Arrow idle " << sec << " seconds"<< endl;
	}
};



int main(){
	DemonArrow d;
	//你这样调用就直接调用子类自己的方法
	d.attack();
	d.idle(6);
	//在名字隐藏的情况下,以下这样子就调用了父类的方法
	d.Enemy::attack();
	d.Enemy::idle();
}

