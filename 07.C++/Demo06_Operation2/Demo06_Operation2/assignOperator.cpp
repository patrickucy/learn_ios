#include <iostream>
using namespace std;

class CCPoint{
	float x;
	float y;
public:
	CCPoint(float x = 0, float y = 0):x(x),y(y){
//		没有初始化列表就要写下面这两行代码
//		this->x = x;
//		this->y = y;
		cout << "CCPoint(f,f)" << endl;
	}
	
//	CCPoint(const CCPoint& p){ //拷贝构造,编译器帮你写!
//		x = p.x;
//		y = p.y;
//		cout << "Copy Constructor" << endl;
//	}
//	
//	~CCPoint(){ //析构函数,编译器帮你写!
//		cout << "~CCPoint()" << endl;
//	}
//	
//	
////	int a;
////	int b = 100;
////	a = b;
//
//	//自己写的赋值运算符
//	CCPoint& operator=(const CCPoint& p){ //赋值运算符重载,编译器帮你写!
//		x = p.x;
//		y = p.y;
//		return *this;
//	}
	
	friend ostream& operator<<(ostream& o, const CCPoint& p){
		return o << "(" << p.x << "," << p.x << ")";
	}
};



int main(){
	CCPoint p1(100,100);
	//这里会调用,拷贝构造函数
	CCPoint p2 = p1;
	
	CCPoint p3;
	cout << "---------------------" << endl;
	//这里的赋值的运算符的含义并不是我们自己写的,是编译器自动帮我们写的
	p3 = p1;
	cout << p3 << endl;
	cout << p1 << endl;
	return 0;
}