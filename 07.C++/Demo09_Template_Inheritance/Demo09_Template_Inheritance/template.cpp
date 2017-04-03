#include <iostream>
#include <string>
#include <typeinfo>
#include "MyArray.h"	
#include "MyDictionary.h"

using namespace std;

//class Buffer {
//	int buf[100];
//	int size;
//public:
//	Buffer():size(){ //这样子写,什么都不传那么这里初始化的值为0
//		
//	}
//	
//	void push(int d) {
//		//++是你在使用完size后才会加加
//		buf[size++] = d;
//	}
//	
//	int get(int pos) {
//		return buf[pos];
//	}
//	
//};





template <typename T>
class Buffer {
	T buf[100];
	int size;
public:
	Buffer() : size(){
	}
	
	void push(const T& d){
		buf[size++] = d;
		
	}
	
	T get(int pos){
		return buf[pos];
	}
	
};





int main(){
//	Buffer b;
//	b.push(10);
//	b.push(2);
//	
//	Buffer b1;
//	b.push("abc");
//	b.push("bca");

	
	//类模板不是类,不能创建对象,如果要创建对象,要把类模板生成类,然后再创建对象(可以说模板是类的类)
	Buffer<int> b;
	b.push(123);
	b.push(321);
	
	
	Buffer<string> b1;
	b1.push("abc");
	b1.push("bvd");
	
	
	//这里不会创建新的类了,因为你跟b对象对应的类!(不是对象)是一模一样的,所以,编译器直接用上面那个模板类,当然用起来是正常用就好了
	Buffer<int> b2;
	b2.push(2222);
	
	
	//如果是int那就跟上面的那个typedefine的那个没有区别了
	MyArray<int> arr;
	arr.push_back(1);
	arr.push_back(22);
	arr.push_back(1234);
	arr.insert(2, 6555);
	
	cout << arr << endl;
	
	
	//泛型的优势就出现在这里了
	MyArray<string> arr2;
	
	arr2.push_back("hello world1");
	arr2.push_back("hello ");
	arr2.push_back("world1");
	arr2.push_back("lo wor1");
	arr2.push_back("hllo wor");
	cout << arr2 << endl;

	
	//实现一个字典 key->value
	Dictionary<string, double> salarys;
	salarys.addObjectForKey("第一排的某个同学", 1000);
	salarys.addObjectForKey("第二排的某个同学",1234.11);
	salarys.addObjectForKey("第三排的某个同学",9999);
	salarys.addObjectForKey("第四排的某个同学",6768);
	
	
	double _salarys = salarys["第四排的某个同学"];
	cout << _salarys << endl;

	
	
	Dictionary<string, string> dic;
	
	dic.addObjectForKey("name", "YuChangYou");
	dic.addObjectForKey("age","teenager");
	dic.addObjectForKey("gender", "male");
	cout << "Changyou Yu is age " << dic["age"] << endl;
	
	
	
	
	
	return 0;
}