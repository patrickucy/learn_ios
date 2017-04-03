#include <iostream>
using namespace std;


//基本数据类型的参数在使用的时候是有约束的,n 在下面这个例子里就不能改变了
//模板还可以有基本数据类型的参数
template <typename T = int, int n = 10> //这里这样子赋值,其实是默认值
class Buffer {
	T buf[n];
	int size;
public:
	Buffer() : size(){
//		n++; //这样子就会报错
	}
	
	bool push(const T& d){
		if (size == n) {
//			n ++; //当然这里还是不行的
			return false;
		}
		buf[size++] = d;
		return true;
	}
	
	
};


int main(){
	
	//为什么上面的 n 不能自加加了呢? 因为那个n用完就不在用了,所以n其实传过去就不存在了
	Buffer<int, 100> b;
	
	int a = 10;
	
	//不能把变量传给模板,只能传给常量
//	Buffer<int, a>;
	
	
	//为什么下面这个又可以了呢?
	// 还是上面的那个原因,传进去的值是有约束的,就只能是常量,不能是变量
	const int ib = 10;
	Buffer<int, ib>  b1;
	

	Buffer<double> b3;
	//反正有默认值,这里直接传一个类型也是可以识别的
	
}