//
//  main.m
//  day06-advanced practise
//
//  Created by Patrick Yu on 6/15/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRShape.h"
#import "TRCircle.h"
#import "TRRectangle.h"
#import "TRSquare.h"

#import "TREmployee.h"
#import "TRStaff.h"
#import "TRManager.h"

#import "selfinit.h"

int main(int argc, const char * argv[])
{

	@autoreleasepool {
		/*
	    TRShape *circle = [[TRCircle alloc] initWithRadius:30];
		TRShape *rectangle = [[TRRectangle alloc] initWithWidth:12 andHeight:30];
		TRShape *square = [[TRSquare alloc] initWithSide:15];
		TRShape *circle2 = [[TRCircle alloc] initWithRadius:20];
		TRShape *square2 = [[TRSquare alloc] initWithSide:22];
		TRShape *rectangle2 = [[TRRectangle alloc] initWithWidth:20 andHeight:10];
		
		TRShape *shapes[6] = {circle,rectangle,square,circle2,square2,rectangle2};
		
		
		
		
		for (int i = 0; i < 6; i++) {//多态数组，多态调用
			shapes[i].area = [shapes[i] calculateArea];
			shapes[i].perimeter =[shapes[i] calculatePerimeter];
			[shapes[i] showAreaAndPerimeter];
		}
	    
		*/
		
		
		TREmployee *employee1 = [[TRStaff alloc] initWithName:@"zhangsan" andJob:@"software engineer" andSalary:6000];
		[employee1 showInfo];
		
		TREmployee *employee2 = [TRManager managerWithName:@"lisi" andJob:@"software engineer" andSalary:6000];
		[employee2 showInfo];
		
		
		
		TREmployee *employees[2];
		employees[0] = employee1;
		employees[1] = employee2;
		
		for (int i = 0; i<2; i++) {
			[employees[i] showInfo];
		}
		
	}
    return 0;
}

