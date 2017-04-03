#include <iostream>
#include <string>
using namespace std;


/*

//下面算法一样,只是类型不一样而已
int Max(int a, int b){
	return a > b ? a : b;
}

int Max(double a, double b){
	return a > b ? a : b;
}

*/

/*
template <<#template parameters#>>
<#return type#> <#function name#>(<#function parameters#>) {
	<#statements#>
}
*/
 
template <typename T>
T Max(T a, T b) {
	return a > b ? a : b;
}

template <typename T>
void fa(T d) {
	cout << endl;
	cout << typeid(d).name() << " <type> " << d << endl;
	if (typeid(d) == typeid(int)) {
		cout << "int TYPE" << endl;
	}else if (typeid(d) == typeid(double)){
		cout << "double TYPE" << endl;
	}else if (typeid(d) == typeid(const char*)){
		cout << "const char* TYPE" << endl;
	}
}


//C++类型转换实现的模式也就是下面这样子,只不过在里面再加一点算法就好了
template <typename T, typename  U>
T type_cast(U u) {
	return T(u);
}

template <typename T, int n>
void print(T* a) {
	for (int i = 0; i < n; i++) {
		cout << a[i] << endl;
	}
	cout << endl;
}


int main(){
	
	cout << Max<int>(12, 23) << endl;;
	cout << Max<double>(2.234543, 0.293) << endl;;
	cout << Max<string>("hello","world") << endl;;
	
	fa<int>(123);
	fa<double>(8989.123123);
	fa<string>("fdsafsdfas");
	
	
	//这些就算不给类型,自己也可以打印出来(编译器它会自动推断出来类型,然后自动执行)
	cout << "---------------------------" << endl;
	cout << Max(123123, 9) << endl;;
	cout << Max(2.333, 1.22) << endl;
	//在教程当中,这里比较不出来哪个大,会比较出错误的结果(因为这里比较的是指针,而不是指针指向的对象,所以下面这里最好把类型也给它写好)
	cout << Max("abc", "cba") << endl;

	//这种情况? 是不允许的!
//	Max(12, 12.4);
	
	
	
	//下面这种情况就都可以推算出来,只有一个参数的情况下
	cout << "---------------------------" << endl;
	fa(3331);
	fa(1.2222);
	fa("string"); //这里最后输出的是PKc,就是c字符串类型的指针的意思
	
	//下面这一行是类型推算不出来的
//	int x = type_cast(4.323);
	//类型参数如果没有出现函数的参数上,就无法推断
	int x = type_cast<int,double>(4.223);
	
	//这样子,还是可以推断出double,不过int要一定指明
	int x1 = type_cast<int>(2.333);
	
	
	
	
	int a[5] = {1,2,3,4,5};
//	print(a); //这里是会报错的
	
	print<int, 10>(a);
	
	
	
	
	return 0;
}