#include <iostream>
using namespace std;

int main(int argc, const char * argv[]){
	double pi = 3.14159;
	
//	第1种类型转换
//	static_cast<目标类型>(被转变量)
//	转换时做静态检查,即在编译时进行
//	void* 到其他指针的转换

	
	//类型转换
	int x = static_cast <int>(pi);
	cout << x << endl;
	
	void* pc = new long(12345);
	long* pl = static_cast<long*>(pc);
	
	
//	第2种类型转换
//	reinterpret_cast<目标类型>(被转变量)
//	允许强转任何类型的指针
//	把整数强转成指针,指针强转成整数
	
//	下面这行代码,编译器会报错,也就是不推荐类型转换
//	double* pd = static_cast<double*>(pl);
	
//	强转也就可以通过编译器了
	double* pd = reinterpret_cast<double*>(pl);
	
	
//	第3种类型转换
//	const_cast<目标类型>(被转变量)
//	常量的类型转换,也就是说去掉常量,变量的限制
//	volatile 这个关键字的意思是,不管这个变量是什么类型的,你就如实的把最后操作过的这个变量给打印出来
	volatile const int a = 100;
	
	//下面这行代码是不能通过编译器的,
//	const int *pa = &a;

	int *pa = const_cast<int*>(&a);
	(*pa) = 200;
	//虽然console打印并显示a是100,但是实际上在内存里面已经改变了,需要加volatile关键字
	cout << a << endl;
	
//	第4类类型转换
//	dynamic_cast<目标类型>()
//	动态转换
	
	
	
//	 上面的都是C++的类型转换,但是实际应用更多的还是使用C语言的酱汁类型转换
	
	
}