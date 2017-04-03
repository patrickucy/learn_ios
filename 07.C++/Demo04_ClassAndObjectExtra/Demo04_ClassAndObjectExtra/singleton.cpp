#include <iostream>
using namespace std;

//在游戏里面只允许一个导演,也就是说这个类只允许创建出一个对象
class CCDirector{
	
	CCDirector(){
		
	}
	
	CCDirector(const CCDirector& director){}
	
	static CCDirector director;
public:
	static CCDirector& sharedDirector(){
		//如果工厂方法是shared开头的方法,那就证明这个是单例对象
		
		//匿名对象(如果没有接收,就是匿名对象)
		//虽然你反回得时director静态对象,但是,你的return命令还是会创建一个新的对象返回出去,还是不是返回的是静态变量本身
		return director;
	}
};



//********************真正在使用的时候还是这种指针的类型(单例是一个设计模式)**********************
class CCDirector2{
	
	CCDirector2(){
		
	}
	
	static CCDirector2 *director2;
public:
	int x;
	static CCDirector2* sharedDirector2(){
		//指针初始化
		if (director2 == NULL) {
			director2 = new CCDirector2;
			cout << "new CCDirector2" << endl;
		}
		return director2;
	}
	
	~CCDirector2(){
		delete director2;
		director2 = NULL;
	}
};


//这样就声明了一个静态成员的一个空间
CCDirector CCDirector::director;


//声明一下director2的指针类型
CCDirector2 *CCDirector2::director2;

int main(){
	//1.不让你随意去创建对象
//	CCDirector director1;
//	CCDirector director2;
	
	//通过拷贝构造函数也能创建对象,这要是不允许的
//	CCDirector director5(director4);

	
	
	//2.又需要一个对象,那么我们写一个工厂方法
//	CCDirector director1 = CCDirector::sharedDirector();
//	CCDirector director2 = CCDirector::sharedDirector();
//	
//	cout << &director1 << "," << &director2 << endl;

	//3.把返回值改为静态变量,但是还是创建了两个对象
	
	/*4. 把返回类型改为引用,问题解决了!但是打印出来的还是两个对象
	 CCDirector::sharedDirector();
	 上面代码无论调用多少次,返回的都是同一个对象,但是打印还是两个对象?
	 
	 原因:你把静态的值传给了两个新创建的对象,他们都分别调用了拷贝构造函数,所以当改成引用的时候,也就是下面这种情况的话,你才会发现是打印的同一个对象
	 */
	CCDirector& director1 = CCDirector::sharedDirector();
	CCDirector& director2 = CCDirector::sharedDirector();
	CCDirector& director3 = CCDirector::sharedDirector();
	CCDirector& director4 = CCDirector::sharedDirector();
	cout << &director1 << "," << &director2 << "," << &director3 << "," << &director4 << endl;

	
	//报错了,因为拷贝构造函数私有化了,就不允许通过拷贝构造函数创建对象了
//	CCDirector director5(director4);

	//5.上面这样子就是最终的单例对象
	
	cout << "---------------------------------------------" << endl;
	
	CCDirector2* dir1 = CCDirector2::sharedDirector2();
	CCDirector2* dir2 = CCDirector2::sharedDirector2();
	CCDirector2* dir3 = CCDirector2::sharedDirector2();
	
	dir1->x = 200;
	dir2->x = 300;
	dir3->x = 400;

	cout << dir1->x << '-' << dir2->x << '-'<< dir3->x << endl;
	
	//6.上面实际上在对同一个对象的一个属性在进行操作
	
	
	
}