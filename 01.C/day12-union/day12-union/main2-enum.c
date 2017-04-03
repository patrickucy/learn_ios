//
//  main2-enum.c
//  day12-union
//
//  Created by Patrick Yu on 6/8/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <stdio.h>
int main(){
	enum{spring,summer,autumn,winter};
	// autumn =3;
	printf("spring:%d\n",spring);
	printf("summer:%d\n",summer);
	printf("autumn:%d\n",autumn);
	printf("winter:%d\n",winter);
	
	int num = -1;
	printf("please input a num:\n");
	scanf("%d",&num);
	
	switch (num%4) {
		case spring:
			printf("spring:%d\n",spring);

			break;
		case summer:
			printf("summer:%d\n",summer);

			break;
		case autumn:
			printf("autumn:%d\n",autumn);

			break;
		case winter:
			printf("winter:%d\n",winter);

			break;

	}
	return 0;

}