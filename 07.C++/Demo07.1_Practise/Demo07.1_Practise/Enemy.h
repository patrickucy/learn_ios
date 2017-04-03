//
//  Enemy.h
//  Demo07.1_Practise
//
//  Created by Yu on 11/20/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#ifndef __Demo07_1_Practise__Enemy__
#define __Demo07_1_Practise__Enemy__

#include <iostream>
#include <string>
#include "skill.h"

using namespace std;


class Enemy {
	string	name;
public:
	Enemy(string name):name(name){
		
	}
	
	virtual string getName(){
		return name;
	}
	
	void attacked(Skill *skill){
		cout << getName() << " is harmed " << skill->getSkillAttack() << " life point by " << skill->getName() <<  endl;
	}
};

#endif /* defined(__Demo07_1_Practise__Enemy__) */
