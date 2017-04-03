//STL

#include <iostream>
#include <vector>
//标准库里面的容器全部都是模板!不能直接创建对象
using namespace std;





int main(){
	vector<int> v;
	//容器都有空参的构造方法,还有区间构造方法
	//这里的a就是一个指针!!!!
	int a[10] = {1,2,3,4,5,6,7,8,9,0};
	
	
	int *a1 = a;
	
	vector<int> v2(a,a+10);
	/*取出容器中的元素,iteratetor 迭代器
	 
	 迭代器你可以当做一个指针使用
	 ++ 与迭代器,相当于对指针进行++ 操作
	 ++就会指向下一个成员
	 *操作就是把迭代器指向的成员取出来
	 迭代器对象不能new出来,它就是通过容器对象创建出来的
	 
	 容器的方法的使用:
	 .begin() 这个方法可以返回一个指向第一个元素的迭代器对象(指针),
	 .end() 返回迭代器,指向容器的最后一个元素的下一个位置
	 .rbegin() 返回反向迭代器,指向容器最后一个元素
	 .rend() 返回迭代器,指向容器的第一个元素的前一个位置
	 */
	
	
	vector<int>::iterator iter = v2.begin();
	
	cout << *iter <<endl;
	while (iter != v2.end()) {
		cout << *iter << " ";
		iter ++;
	}
	cout << endl;
	
	
	vector<int>::reverse_iterator riter = v2.rbegin();
	while (riter != v2.rend()) {
		cout << *riter << " ";
		riter ++; //因为你已经定义好了是反向的,所以这里还是++,但是表示的是反向的(取前一个元素)
	}
	cout << endl;
	
	return 0;
}