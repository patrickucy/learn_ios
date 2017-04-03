//
//  Skill.h
//  Demo07.1_Practise
//
//  Created by Yu on 11/20/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#ifndef __Demo07_1_Practise__Skill__
#define __Demo07_1_Practise__Skill__

#include <iostream>
#include <string>
using namespace std;

class Skill {
	string name;
public:
	Skill(string name = "Skill name") : name(name){
		
	}
	
	//纯虚函数(就是什么都不干的虚函数
	//纯虚函数必须重写,要不然编译不能通过
	//只有纯虚函数的类,不能创建对象,只能被子类们继承
	virtual string getName() = 0;
	
	virtual int getSkillAttack() = 0;
	
	void useSkill(){
		cout << name << " skill is used" << endl;
	}
};

#endif /* defined(__Demo07_1_Practise__Skill__) */
