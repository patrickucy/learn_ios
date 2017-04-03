#include <iostream>
#include <vector>
#include "print.h"

//标准库里面的容器全部都是模板!不能直接创建对象
using namespace std;



int main(){
	int a[10] = {1,2,3,4,5,6,7,8,9,0};
	
	vector<int> v(a,a+10);
	print(v.begin(),v.end());
	
	vector<double> vd(a,a+10);
	print(vd.begin(),vd.end());
	
	print(a, a+10);
	
	cout << "-------------------------" << endl;
	
	v.insert(++++v.begin(), 10);
	
	print(v.begin(), v.end());
	
	
	v.insert(v.end(), 20);
	print(v.begin(), v.end());
	
	
	v.erase(v.begin());
	print(v.begin(), v.end());

	v.erase(--v.end());
	print(v.begin(), v.end());
	
	
	//从这个位置删除到这个位置,并且后位置不删除
	v.erase(v.begin() + 3,v.begin() + 5);
	print(v.begin(), v.end());
	
	
	
	//clear() 就是清空,这个很简单,你以后自己用到的时候就直接用就好了
	
	
	//如果两个容器需要交换,必须两个类型必须是一样的,要不然交换不了
	vector<int> v2(a+4,a+10);
	v.swap(v2);
	swap(v, v2);
	//
	
	
	
	
	
	
	return 0;
}