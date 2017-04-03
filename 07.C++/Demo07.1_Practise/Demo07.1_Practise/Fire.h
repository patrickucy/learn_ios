//
//  Fire.h
//  Demo07.1_Practise
//
//  Created by Yu on 11/20/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#ifndef __Demo07_1_Practise__Fire__
#define __Demo07_1_Practise__Fire__

#include <iostream>
#include "Skill.h"

using namespace std;


class Fire : public Skill {
public:
	Fire() : Skill("火离曜月") {
		
	}
	
	virtual string getName(){
		return "火离曜月";
	}
	
	virtual int getSkillAttack(){
		return 200;
	}
};


#endif /* defined(__Demo07_1_Practise__Fire__) */
