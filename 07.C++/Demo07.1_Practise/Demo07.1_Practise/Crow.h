//
//  Crow.h
//  Demo07.1_Practise
//
//  Created by Yu on 11/20/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#ifndef __Demo07_1_Practise__Crow__
#define __Demo07_1_Practise__Crow__

#include <iostream>
#include "Enemy.h"
using namespace std;

class Crow : public Enemy {
public:
	Crow(): Enemy("变异乌鸦"){
		
	}
	
	virtual string getName(){
		return Enemy::getName();
	}
};

#endif /* defined(__Demo07_1_Practise__Crow__) */
