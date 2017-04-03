#include <iostream>
#include <string>


//这里的引号跟尖括号的用法跟OC是一样的,也就是用系统的就用<>,自己声明的头文件就用""
//#include "changyou.h"

namespace changyou {
	//常量就是常量,当你把字符串赋值给一个变量的时候,编译器是会提示的,只要当你把变量生命诚常变量才是正确的

	const char *name = "Changyou";
	void show(){
		std::cout << "Changyou is a UCSC Student" << std::endl;
	}
}

namespace changyou {
	//你会发现命名空间的名字是可以重复使用的,实际上是同一个命名空间
	//但是你会发现在同一命名空间中不能写同样的内容,因为实际上就是同一个空间,不可以有重复的属性,变量命名
	//这样子设定就可以命名空间可以分步在不同的文件里面
//	const char *name = "123";//会报错
	void other(){
		std::cout << "new added content" <<std::endl;
	}
}

namespace otherGuy {
	const char *name = "1310";
	void show(){
		std::cout << "1310 comes a classmate with salary of 5k" << std::endl;
	}
	
}

	
std::string name = "tarena";

int main(){
	//标准的输出方式
//	std::cout << changyou::name <<std::endl;
//	std::cout << otherGuy::name <<std::endl;
//	std::cout << name <<std::endl;

//	changyou::show();
//	otherGuy::show();
//	changyou::other();//同一个命名空间,不同的代码位置(上面)
//
	
	
	//使用命名空间中的具体函数
//	using std::cout;
//	using std::endl;
////	cout << changyou::name << endl;
//	cout << otherGuy::name << endl;
//	cout << name << endl;
	
	
	
	//统一声明命名空间,并一直使用
//	using namespace std;
//	
//	cout << changyou::name << endl;
//	cout << otherGuy::name << endl;
//	cout << name << endl;
	
	
	
	
	//如果是声明多个命名空间,而且遇到调用的方法出现冲突的话,还是要自己声明具体的命名空间
	using namespace std;
	using namespace changyou;
	using namespace otherGuy;
	cout << changyou::name << endl;
	cout << otherGuy::name << endl;
	//这个就是调用全局变量的方式
	cout << ::name <<endl;
	
	
	return 0;
}