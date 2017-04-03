#include <iostream>

using namespace std;

//void print(int *a,int n){
//	for (int i = 0; i < n-1; i++) {
//		cout << a[i] << ' ';
//	}
//	cout << a[n-1] << endl;
//}
//
//void print(int *a,int n, char ch){
//	
//	for (int i = 0; i < n-1; i++) {
//		cout << a[i] << ch;
//	}
//	cout << a[n-1] << endl;
//}

//上面几个函数是重载, 由于你会发现参数的传的方式只是顺序不一样,所以你可以改成默认传值的方式来简化函数,你会发现,下面的调用什么都没改动,得到的最后的效果是一模一样的
void print(int *a,int n,char ch = ' ',bool flag = false) {
	if (flag) {
		cout << '[';
	}
	
	for (int i = 0; i < n-1; i++) {
		cout << a[i] << ch;
	}
	
	
	cout << a[n-1] << (flag ? ']' : ' ') << endl;
		
}

//这样子写函数的执行效率会很高,当然编译器是否被处理成内联是不确定的
//当函数太臃肿,编译器是不会把他当内联的,所以只有当重复使用率高,而且代码规模小的函数才会处理成内联
inline void print(int x) {
	cout << "x = " << x << endl;
}

int main() {
	int a[]={1,2,3,4,5,6,7,8,9,0};
//	这里只给了两个参数,后面两个参数并没有给,实际上,函数自动的使用了默认值来执行
	print(a, 10);
	print(a, 10, '|');
	print(a, 10, ',', false);
	
//	这里就是内联函数的调用,实际上内联函数并不是调用过来的,因为你写了内联关键字,这行代码实际上是直接copy过来了,直接执行,不是通过调用机制执行的,所以他的执行效率高,
	print(100);

}