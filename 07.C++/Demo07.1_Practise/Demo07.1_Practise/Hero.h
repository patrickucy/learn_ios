//
//  Hero.h
//  Demo07.1_Practise
//
//  Created by Yu on 11/20/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#ifndef __Demo07_1_Practise__Hero__
#define __Demo07_1_Practise__Hero__

#include <iostream>
#include "Skill.h"
#include "Enemy.h"
using namespace std;

class Hero {
public:
	//方法的重载,
	void attack(Skill *skill, Enemy *enemy){
		skill->useSkill();
		enemy->attacked(skill);
		
		
	}
	
//	void attack(Skill &skill, Enemy &enemy){
//		skill.useSkill();
//		enemy.attacked(skill.getSkillAttack());
//	}
};

#endif /* defined(__Demo07_1_Practise__Hero__) */
