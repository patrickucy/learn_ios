//
//  main.c
//  day12-union
//
//  Created by Patrick Yu on 6/8/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <stdio.h>
typedef union {
	int num;
	char name[10];
}StudentL;

typedef struct{
	int num;
	char name[10];
}StudentS;

int main(int argc, const char * argv[])
{
	StudentS student;
	StudentL student2;
    return 0;
}

