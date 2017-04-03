#include <iostream>
using namespace std;


class Parent{
	
};



//类模板继承普通的类
template <typename T>
class Child : public Parent {

};


//普通类继承类模板(这里一定要给类型,因为他需要这个模板生成一个类然后让child2来继承,模板本身是没办法继承的)
class Child2 : public Child<int> {
	
};


//类模板继承类模板
template <typename T>
class Child3 : public Child<int> {

};


//类模板继承模板参数给出的基类
template <typename T>
class Child4 : public Child<T> {
	
};




int main(){
	
	
	return 0;
}