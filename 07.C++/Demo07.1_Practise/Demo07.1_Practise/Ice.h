//
//  Ice.h
//  Demo07.1_Practise
//
//  Created by Yu on 11/20/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#ifndef __Demo07_1_Practise__Ice__
#define __Demo07_1_Practise__Ice__

#include <iostream>
#include "Skill.h"

using namespace std;

class Ice : public Skill {
	
public:
	Ice() : Skill("霜之星辰") {
		
	}
	
	virtual string getName(){
		return "霜之星辰";
	}
	
	virtual int getSkillAttack(){
		return 100;
	}
	

};

#endif /* defined(__Demo07_1_Practise__Ice__) */
