#include <iostream>
using namespace std;

enum HeroStatus {
//	默认是0,然后一直递增下去
//	Stand = 0;
	Stand,
	Move,
	Attack,
	Die
};


//匿名枚举
enum {
	
	HeroAttack,
	EnemyAttack,
	BossAttack
};
//上面的匿名枚举实际上相当于定义了下面三个常量,你uncomment一下就会报错
//const int HeroAttack = 0;
//const int EnemyAttack = 1;
//const int BossAttack = 2;

void heroLogic(HeroStatus status){
	switch (status) {
		case Stand:
			cout << "Hero stands still" << endl;
			break;
			
			
		case Move:
			cout << "Hero Moves" << endl;
			break;
		
			
		case Attack:
			cout << "Hero attacks" << endl;
			break;
			
			
		case Die:
			cout << "Hero is dead" << endl;
			break;
			
			
		default:
			cout << "What do you want from me?" << endl;
			break;
	}
}

int main(){
//	这里虽然Attack的本质是2,但是你已经不能赋值2了,因为CPP是强类型语言,所以,你必须写你枚举好了的那些东西,其实这样子更方便
	HeroStatus status = Attack;
	
	
//	当然你这样强制转换了,还是可以用的
	status = (HeroStatus)2;
	
	
//	下面的这种做法是可以,因为大范围的值,可以给小范围的值赋值,而小范围的饿值,不能给大范围的值赋值
	int x;
	x = status;
	
	
	heroLogic(status);
	status = Move;
	
	heroLogic(status);
	status = Die;

	heroLogic(status);
	
	
	
	return 0;
}