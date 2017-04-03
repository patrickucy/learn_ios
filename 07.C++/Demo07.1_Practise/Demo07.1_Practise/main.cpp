//
//  main.cpp
//  Demo07.1_Practise
//
//  Created by Yu on 11/20/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <iostream>
#include "Skill.h"
#include "ice.h"
#include "Fire.h"
#include "Thunder.h"

#include "Enemy.h"
#include "Crow.h"
#include "Boar.h"
#include "Monkey.h"

#include "Hero.h"


void fa(Skill *s) {
	//虽然技能类是抽象类,他不能创建对象,但是可以作为参数用
}

void fb(Skill &s) {
	
}

//void fc(Skill s) { //这里是值传递,是会创建对象的,因为为抽象类,所以就创建不了对象了,因此这个函数也不能用了
//	
//}

//Skill fd(){ //这里无论如何都要创建新对象,所以就不可以了
//	return NULL;
//}

Skill* fd(){
	return new Ice;
}

//Skill& ff(){
//	Ice i;
//	return i; //这里返回的是一个临时变量,是没有意义的,说白了就不要这么干!!!!!!!!!!!!!!!
//}

int main(int argc, const char * argv[])
{
	Skill *ice = new Ice;
	Skill *fire = new Fire;
	Skill *thunder = new Thunder;
	
	Enemy *crow = new Crow;
	Enemy *boar = new Boar;
	Enemy *monkey = new Monkey;
	
	
	
	Hero *hero = new Hero;
	
	hero->attack(ice, crow);
	hero->attack(fire, boar);
	hero->attack(thunder, monkey);
	
	fa(new Ice);
	fa(new Fire);
	

    return 0;
}

