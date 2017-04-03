//
//  main10-assignment.c
//  day10
//
//  Created by Patrick Yu on 6/7/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//	模拟用户登录，要求可以输入用户名、密码，三次失败，退出程序


#include <stdio.h>
#include <string.h>
int main(){
	printf("welcome to your first log in program\n");
	
	//declaration
	const char* account = "admin\n";
	const char* password = "123\n";
	char accountInput[10];
	char passwordInput[10];
	
	//input
	for ( int i =3; i>0; i--) {
		printf("please input your account:\n");
		fgets(accountInput, 10, stdin);
		printf("please input your password:\n");
		fgets(passwordInput, 10, stdin);
	//process
		int accountResult = strcmp(accountInput, account);
		int passwordResult = strcmp(passwordInput, password);
	//result
		if (accountResult ==0 && passwordResult==0) {
			printf("You successfully loged in!\n");
			return 0;
		}else {
			printf("Your account and password are not currect! try again! you still have %d chances\n",i-1);
		}
	}
	printf("You fail to log in with wrong account or password,sorry\n");
	return 0;
}