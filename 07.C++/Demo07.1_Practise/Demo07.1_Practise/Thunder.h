//
//  Thunder.h
//  Demo07.1_Practise
//
//  Created by Yu on 11/20/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#ifndef __Demo07_1_Practise__Thunder__
#define __Demo07_1_Practise__Thunder__

#include <iostream>
#include "Skill.h"

using namespace std;


class Thunder : public Skill {
public:
	Thunder() : Skill("雷霆霹雳") {
		
	}
	
	virtual string getName(){
		return "雷霆霹雳";
	}
	
	
	virtual int getSkillAttack(){
		return 300;
	}
};
#endif /* defined(__Demo07_1_Practise__Thunder__) */
