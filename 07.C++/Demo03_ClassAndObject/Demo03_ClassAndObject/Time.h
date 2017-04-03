//
//  Time.h
//  Demo03_ClassAndObject
//
//  Created by Yu on 10/18/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#ifndef Demo03_ClassAndObject_Time_h
#define Demo03_ClassAndObject_Time_h

//实际上头文件就是声明用的

class Time {
	int hour;
	int min;
	int sec;
public:
	
	Time(int h = 0, int m = 0,int s = 0);
	
	void dida();
	
	void show();
	
	void run();
};



#endif
