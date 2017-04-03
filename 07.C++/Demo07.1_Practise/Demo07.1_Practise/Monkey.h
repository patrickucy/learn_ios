//
//  Monkey.h
//  Demo07.1_Practise
//
//  Created by Yu on 11/20/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#ifndef __Demo07_1_Practise__Monkey__
#define __Demo07_1_Practise__Monkey__

#include <iostream>
#include "Enemy.h"

using namespace std;



class Monkey : public Enemy {
public:
	Monkey() : Enemy("狂暴野猪"){
		
	}
	
	virtual string getName(){
		return Enemy::getName();
	}
};


#endif /* defined(__Demo07_1_Practise__Monkey__) */
