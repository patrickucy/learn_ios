#include <iostream>

using namespace std;


//联合中的所有变量都是共享内存空间的
union MyUnion {
	int x;
	int y;
//	也就是说上面的两个变量指的都是同一个内存空间
//	说白了就是同一个东西,不同的变量来表达而已
};


int main(){
//	C中联合的创建方式,在CPP中不需要这样了
//	union MyUnion mu;
	
	MyUnion mu;
	mu.x = 100;
	cout << mu.y << endl;
	mu.y += 10;
	cout << mu.x << endl;
	
	
//	匿名联合在OC中是不支持的
	union {
		int a;
		int b;
	};
	a = 1200;
	cout << b << endl;

	
	
	return 0;
}