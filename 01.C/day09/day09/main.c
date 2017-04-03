//
//  main.c
//  day09
//
//  Created by Patrick Yu on 6/5/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <stdio.h>

void varibleConcept(){
	auto int i = 1; //default
	int j = 1;
	static int k = 1;
	i++;
	j++;
	k++;
	printf("variableConcept i:%d\n",i);
	printf("variableConcept j:%d\n",j);
	printf("variableConcept k:%d\n",k);

}

int main(int argc, const char * argv[])
{
	varibleConcept();
	varibleConcept();
    return 0;
}

