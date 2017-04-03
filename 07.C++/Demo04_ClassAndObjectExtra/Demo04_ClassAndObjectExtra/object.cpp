#include <iostream>
using namespace std;

class CCPoint {
	float x;
	float y;
public:
	CCPoint(float x = 0,float y = 0):x(x),y(y){
		cout << "CCPoint(f,f)" <<endl;
	}
	
	~CCPoint(){
		cout << "~CCPoint(f,f) destroyed" <<endl;
	}
	
	void show(){
		cout << " point(" << x << "," << y << ")" << endl;
		
	}
};

//通过这行代码,你发现是构造函数先执行,才到main函数
//全局变量在程序开始时创建,全局对象不能主动销毁,只有在程序结束(程序进程结束)时自动销毁,
CCPoint point(100,100);


void fa(){
	cout << "fa start" << endl;
	CCPoint point(300,300);
	point.show();
	cout << "fa end" << endl;
	
}

void fb(){
	cout << "fb start" << endl;
	CCPoint* point = new CCPoint(400,400);
	point->show();
	delete point;
	cout << "fb end" << endl;
}

int main(){
	
	cout << "main" <<endl;
	fa();
	cout << "-------------" << endl;
	
	fb();
	cout << "=============" << endl;
	
	
//	栈中的对象出了作用域就销毁了,这也就是为什么需要在heap里面创建对象了!~!~!
	for (int i=0; i < 5; i++) {
		CCPoint point(100,100);
		point.show();
	}
	
//	创建1
//	销毁1
//	创建2
//	销毁2
//	创建3
//	销毁3
//	创建4
//	销毁4
//	创建5
//	销毁5
//	上面才是for循环的真实的过程,因为每执行一次都出了一次作用域,所以每次都创建销毁,再创建销毁...
	
	//作用域,符合语句
	{
		CCPoint point1;
		CCPoint point2;
		CCPoint point3;
		CCPoint point4;
		CCPoint point5;
	}
	
//	创建1
//	创建2
//	创建3
//	创建4
//	创建5
//	销毁1
//	销毁2
//	销毁3
//	销毁4
//	销毁5
//	上面这样才是同一个作用域里面创建对象,销毁对象的过程
	
	cout << "&&&&&&&&&&&&&" << endl;
//	这里的指针指的是数组的首地址
	CCPoint *ps = new CCPoint[3];
//	所以这里的删除就是要在堆中删除整个数组
	delete[] ps;
	
	
	
	
	
	
	return 0;
}