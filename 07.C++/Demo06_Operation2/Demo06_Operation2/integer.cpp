#include <iostream>
using namespace std;

class Integer{
	int x;
public:
	Integer(int x = 0,int y = 0):x(x){
	}
	
	//友元函数的双目运算符重载
	friend ostream& operator<<(ostream& out, Integer& i);
	
	friend const Integer operator+(const Integer& item1,const Integer& item2);
	friend Integer operator-(const Integer& item1,const Integer& item2);
	friend Integer operator*(const Integer& item1,const Integer& item2);
	friend Integer operator/(const Integer& item1,const Integer& item2);
	friend Integer operator%(const Integer& item1,const Integer& item2);
	friend bool operator>(const Integer& item1,const Integer& item2);
	friend bool operator<(const Integer& item1,const Integer& item2);
	friend bool operator>=(const Integer& item1,const Integer& item2);
	friend bool operator<=(const Integer& item1,const Integer& item2);
	friend bool operator==(const Integer& item1,const Integer& item2);
	friend bool operator!=(const Integer& item1,const Integer& item2);
	
	//成员函数的饿单目运算符重载
	Integer operator-(){
		return -x;
	}
	
	Integer operator~(){
		return ~x;
	}
	
	//前++(先加加,再使用)
	Integer& operator++(){ //这里Integer& 应该返回的是自身,而不是integer 返回一个新的对象
		this->x++;
		return *this;
	}
	//后++(先使用,再加价) (有需求说返回值不允许修改的话,可以在返回值类型前面加个const就可以了)
	const Integer operator++(int){ //哑元参数,虽然什么都没有,但是可以实现一个函数重载
		//this->x;//100
		Integer old = *this;
		//old.x;//100
		this->x++;
		//this->x;//101
		
		//不能返回临时变量的引用,所以不能返回引用,直接返回新创建的对象
		return old;
		
	}
};


/*各种运算符的重载(友元函数:实际上是一个全局函数)*/
ostream& operator<<(ostream& out, Integer& i){
	out << i.x;
	return out;
}


const Integer operator+(const Integer& item1,const Integer& item2){
	return Integer(item1.x + item2.x);//记住要返回对应的类型
}
Integer operator-(const Integer& item1,const Integer& item2){
	return item1.x - item2.x;//即使返回值不是integer类型也是可以的,因为会调用对应的构造函数,
}

Integer operator*(const Integer& item1,const Integer& item2){
	return Integer(item1.x * item2.x);
}

Integer operator/(const Integer& item1,const Integer& item2){
	return Integer(item1.x / item2.x);
}

Integer operator%(const Integer& item1,const Integer& item2){
	return Integer(item1.x % item2.x);
}

bool operator>(const Integer& item1,const Integer& item2){
	return item1.x > item2.x; //这样写也是可以的
}

bool operator<(const Integer& item1,const Integer& item2){
	if (item1.x < item2.x) {
		return true;
	}else{
		return false;
	}
}

bool operator>=(const Integer& item1,const Integer& item2){
	if (item1.x >= item2.x) {
		return true;
	}else{
		return false;
	}
}

bool operator<=(const Integer& item1,const Integer& item2){
	if (item1.x <= item2.x) {
		return true;
	}else{
		return false;
	}
}


bool operator==(const Integer& item1,const Integer& item2){
	if (item1.x == item2.x) {
		return true;
	}else{
		return false;
	}
}

bool operator!=(const Integer& item1,const Integer& item2){
	if (item1.x != item2.x) {
		return true;
	}else{
		return false;
	}
}


int main(){
	Integer i1 = 100;
	cout << i1 << endl;
	Integer i2 = 200;
	
	Integer i3 = i1 + i2;
	Integer i4 = i1 - i2;
	Integer i5 = i1 * i2;
	Integer i6 = i1 / i2;
	Integer i7 = i1 % i2;
	
	bool b1 = i1 > i2;
	bool b2 = i1 >= i2;
	bool b3 = i1 <= i2;
	bool b4 = i1 == i2;
	bool b5 = i1 != i2;

	
	i3 = i1 - 50; //i1.operator+(Integer(50));
	i3 = 50 - i1; //50.operator+(Integer(i1));
	//***然而这个50是没有成员函数的,这里能编译通过是因为有友元函数,这也是为什么友元函数为什么是推荐使用的***
	//双目运算符尽量写成友元函数,因为像这里这种情况就相当于,调用50这个对象的operator+方法,而50并不是一个对象,所以可能会报错!!!!!!
	
	
	int x = 100;
	-x;
	
	i3 = -i1;
	cout << i3 << endl;
	
	i1 = 20;
	i3 = ~i1; //自身+1 取反
	cout << i3 << endl;
	
	
	++i1;
	cout << i1 << endl;
	
	i1 = 150;
	//1 前 i1 = 151
	//2 后 i1 = 152
	//3 前 i1 = 152
	//4 后 i1 = 152
	//5 相加 304
	i3 = ++i1 + ++i1;
	cout << i3 << endl;
	
//	为什么下面的这两种情况不可以?
//	++x = 200;
//	x++ = 200; //这里不可以的真正原因是,临时变量不可以作为左值出现,只要没有人用就会马上销毁掉
	
	
	
	
//	对比下面的这种情况
	int a = 100;
	int c = 100;
//	a + c = 200;
	//这里没有报错,说明有问题,把返回值加了const就报错了,也就对了
//	i1 + i2 = 12345; //返回值应该不可以修改,只能给别的对象赋值,只要返回值是const就可以了!
	i3 = i1 + i2;
	
//	i3++ = 200;
	return 0;
}