#include <iostream>
using namespace std;

//CPP函数必须要有返回值,就算不需要返回任何内容,也要返回一个void的关键字,返回一个空类型
//在C中你定义一个函数,如果你什么返回值不写,那么就是返回的int类型
//在CPP函数中,如果不写参数,在调用的时候也是不可以写参数的
void fa() {
	
}

/*函数重载*/
/*
 增长经验值的函数
 需求1: 打死怪物,经验值增长固定的数值,返回增长后的经验值
 */
int addEXp(int heroExp,int addExp = 10){ //所谓的默认值,就是默认初始化的一个值
	cout << "hero's experience point added " << addExp << endl;
	return heroExp + addExp;
}

/*
 需求2: 增加当前经验的百分比 返回增长后的经验值
 */
int addExp(int heroExp,double addExpByPercentage){
	cout << "hero's experience point added " << addExpByPercentage *100 << "%" << endl;
	return heroExp + heroExp * addExpByPercentage;
}

/*
 需求3: 增加固定数值,返回,升到下一级的经验所完成的百分比
 */
double addExp(int levelExp,int heroExp, int addExp) {
//	这样*1.0 就会变成浮点型了
	cout << "to level up your hero, you still need " << addExp * 1.0 / levelExp * 100 << "%" << endl;
	double finishExpPercentage = (double)(heroExp + addExp)/levelExp;
	return finishExpPercentage;
}

int main() {
//	这里一定要先声明这个main函数才能调用这个函数
//	在CPP中,在函数啲啊用前,一定要先声明或者定义
	void fa();
	
	int heroExp = 250;
//	cout << addEXp(heroExp, 100) << endl;
////	你要注意的是这里是值操作
//	cout << addExp(heroExp, 0.2) << endl;
//	cout << addExp(1000, heroExp, 150) << endl;
	
//	***函数重载的使用***
	addExp(heroExp, 2.3);
	
	
	return 0;
}

