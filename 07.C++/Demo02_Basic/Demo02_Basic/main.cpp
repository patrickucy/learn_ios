//
//  main.cpp
//  Demo02_Basic
//
//  Created by Yu on 10/10/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <iostream>
using namespace std;

void fa(int &r){ //引用传递,直接对原来的变量操作,在C++中推荐这个来(不能传常量,只能传变量)
//	说白了就是,你传个值进来,函数直接对这个值的操作(操作的是值,但是反应出来的是同一个内存地址)
//	这里的引用就是别名,实际上还是同一个东西,用的是变量本身,(如果是r,那就是值传递)
	//这里的别名的一辈子就是函数作用域之内,也就是说,怎么传都不会影响这个别名
	cout << r << endl;
	cout << &r << endl;
	r++;
}

void fb(int n){ //值传递,复制一份参数,然后运算
//	说白了就是,传个值进来,直接复制一份参数,然后在新的内存空间操作
	cout << "n = " << n << endl;
	cout << "&n = " << &n << endl;
	n++;
}

void fc(int * pi){ //地址传递,不过在oc中做游戏,这个是用得比较多的
//	说白了就是,传个值的地址进来,然后对值操作,不过要自己很小心指针的使用
	cout << "pi = " << *pi << endl;
	cout << "&pi = " << pi << endl;
	(*pi) ++;
}

void fd(const int &r){//常量,变量可传,但是变量从此边长亮了
	//	函数的参数声明成const int &r,并且这个引用不可以在函数里面++
//	int x = r;
}

int& fe(int& f){
	f++;
	return f;
}


int& ff(){
	int x =12345;
//	不要返回局部变量的引用
	return x;
}

//小练习
void my_swap(int *a ,int *b){//地址传递
//	这里就是直接以指针形式操作,最终操作的是变量对应的指针,一旦理解错误,或者误操作,你会发现很难去找错
	int c;
	c = *a;
	*a = *b;
	*b = c;
}

void my_swap(int &a, int &b){//引用传递
//	这里就体现出用引用的优越性,就是函数里面写的都是变量的形式,但是最终操作的是变量对应的指针
	int c;
	c = a;
	a = b;
	b = c;
}





int main(int argc, const char * argv[])
{
//	int x =100;
//	int &r = x; //这种引用一旦给了就一辈子就是这样的了,不能改,除非这个变量销毁了
//	
//	fa(x);
//	cout << "x = " << x << endl;
//	cout << "&x = " << &x << endl;
//	
//	int y = 200;
//	fa(y);
//	cout << "y = " << y << endl;
//	cout << "&y = " << &y << endl;
//	
//	
//	fb(x);
//	cout << "x = " << x  << endl;
//	cout << "&x = " << &x << endl;
//	
//	int z = 300;
//	fc(&z);
//	cout << "z = " << z << endl;
//	cout << "&z = " << &z << endl;

	
	int a = 100;
	int b = 200;
	
	my_swap(&a,&b);
	cout << "a = " << a << endl;
	cout << "b = " << b << endl;
	
	my_swap(a, b);
	
	cout << "a = " << a << endl;
	cout << "b = " << b << endl;
	
	
	int c = 200;
	fd(c);
	fd(100); //这里报错了,除非函数的参数声明成const int &r,并且这个引用不可以在函数里面++
	
	
	int& d = fe(c);
	cout << "d = " << d << endl;
	cout << "&d = " << &d << endl;
	cout << "&c = " << &c << endl;

	int e = fe(c); //你发现这里地址变了,那是因为你赋值给新的变量了
	cout << "e = " << e << endl;
	cout << "&e = " << &e << endl;

	
	int &f = ff();
	cout << " f= " <<
	
	
    return 0;
}

