//
//  Boar.h
//  Demo07.1_Practise
//
//  Created by Yu on 11/20/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#ifndef __Demo07_1_Practise__Boar__
#define __Demo07_1_Practise__Boar__

#include <iostream>
#include "Enemy.h"

using namespace std;


class Boar : public Enemy {
public:
	Boar() : Enemy("狂暴野猪"){
		
	}
	
	virtual string getName(){
		return Enemy::getName();
	}
};


#endif /* defined(__Demo07_1_Practise__Boar__) */
