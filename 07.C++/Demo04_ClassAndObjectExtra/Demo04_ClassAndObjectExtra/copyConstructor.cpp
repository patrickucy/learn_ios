#include <iostream>
using namespace std;


class CCPoint {
	float x;
	float y;
public:
	CCPoint(float x = 0,float y = 0):x(x),y(y){
		cout << "CCPoint(f,f)" <<endl;
	}
	
	//拷贝构造函数
	//如果不写,系统会自动的帮我们写一个这样子的函数
	//这里的参数加了const之后,你会发现只读,和非只读的赋值操作都能用
	CCPoint(const CCPoint& point){
		this->x = point.x;
		this->y = point.y;
		cout << "const CCPoint& point)" << endl;
	}
	
	~CCPoint(){
		cout << "~CCPoint(f,f)" <<endl;
	}
	
	void show() const{
		cout << " point(" << x << "," << y << ")" << endl;
		
	}
};


int main(){
//	你会发现最后析构了两个对象,因为这里拷贝构造函数
//	因为一个是构造函数创建的,一个是拷贝构造函数创建的
	const CCPoint point(100,100);
	CCPoint point1 = point; //CCPoint point1(point); 这种情况调用的是拷贝构造方法
	
	point.show();
	point1.show();
	return 0;
}