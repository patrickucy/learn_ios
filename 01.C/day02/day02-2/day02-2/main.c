//
//  main.c
//  day02-2
//
//  Created by Patrick Yu on 6/3/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
	int num1;
	int num2;
	printf("please input your two numbers:\n");
	
	scanf("%d %d",&num1,&num2);
	printf("sum: %d, difference: %d, ji: %d, shang: %d \n\n", num1 + num2, num1 - num2, num1 * num2, num1 / num2);
	
	float salary;
	printf("please input your salary:\n");
	
	scanf("%f",&salary);
	printf("your salary is %f and the tax should be %.2f\n",salary, salary * 0.25);
    return 0;
}

