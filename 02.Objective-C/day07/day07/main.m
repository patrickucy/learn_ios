//
//  main.m
//  day07
//
//  Created by Patrick Yu on 6/16/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRTarenaStudent.h"
#import "TRStudent.h"
#import "TRProtocol2.h"
#import "TRProtocol1.h"
#import "TRMyClass.h"


int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    //通过id类型遵守一个协议，声明的引用就是协议引用
		//协议引用可以指向任何事先了协议的对象
		//与多态的语法相类似，协议引用只能调用协议中要求的方法
	    id <TRTarenaStudent> student = [[TRStudent alloc] init];
		[student study];
		
		id<TRTarenaStudent2> student2 = [[TRStudent alloc] init];
		[student2 learn];
		[student study];
	    
		id <TRProtocol1,TRProtocol2> myClass = [[TRMyClass alloc] init];
		[myClass method1];
		[myClass method2];
		
	}
    return 0;
}

