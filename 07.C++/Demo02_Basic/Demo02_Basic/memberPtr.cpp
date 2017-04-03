#include <iostream>
#include <cstdio>
using namespace std;

struct Date {
	int year;
	int month;
	int day;
	void show(){
		cout << year << '-' << month << '-' << day << endl;
	}
};

//打印year

void print_1(Date *ds, int n) {
	for (int i = 0; i < n; i++) {
		cout << ds[i].year << endl;
	}
}

//比如说你又要打印更多的属性这样一次次的声明函数的方法就会很麻烦
//void print_2(Date *ds, int n) {
//	for (int i = 0; i < n; i++) {
//		cout << ds[i].month << endl;
//	}
//}

void print(Date *ds, int n,int Date::*p) {
	for (int i = 0; i < n; i++) {
		cout << ds[i].*p << endl;
	}
}

int main(){
	//取得了成员指针的地址
//	int *py = &Date::year;
// 上面的赋值操作是错的,因为不是类的成员指针类型,只是普通指针
	
	int Date::* py = &Date::year;
	cout << "py = " << py << endl;
	
	int Date::* pm = &Date::month;
	cout << "pm = " << pm << endl;
	
	int Date::* pd = &Date::day;
	cout << "pd = " << pd << endl;
	
//	为什么打印出来是1呢?
//	因为cout 这个函数没办法打印出地址
	
	printf("C: py = %p\n",py);
	printf("C: pm = %p\n",pm);
	printf("C: pd = %p\n",pd);
//	成员指针是一种相对地址,也就是说你打印出来成员的地址永远是从0x0开始的,因为是个相对地址,相对于类的地址的偏移值
	
	Date d = {2014,2,8};
	cout << d.year << endl;
//	下面这个就是成员指针的取值,看得出最终的结果还是一样的
//	正是因为成员指针是相对地址,所以才要用结构体的 点  语法来取指针指向的值
	cout << d.*py << endl;
	
//	也可以通过纯指针的方法来取类的成员
	Date *p = &d;
	cout << p->year <<endl;
	cout << p->*py <<endl;

	
	Date da[] = {{2011,1,1},{2012,2},{2013,3,3},{2014,4,4}};
//	通过成员指针直接可以当参数传进去
	print(da, 4, &Date::year);
	
}