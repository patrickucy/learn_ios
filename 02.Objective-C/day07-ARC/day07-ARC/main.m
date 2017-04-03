//
//  main.m
//  day07-ARC
//
//  Created by Patrick Yu on 6/16/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRStudent.h"


void test1(){
	//默认为强引用
	//显示声明Student为强引用
	if (1==1) {
		NSLog(@"if block begins");
		__strong TRStudent *student = [[TRStudent alloc] init];
		[student study];
	}//出了作用域会自动销毁对象，自动release消息
	NSLog(@"if block ends");
}

void test2(){
	__strong TRStudent *student = nil;
	if (1==1) {
		NSLog(@"if block begins");
		__strong TRStudent *student2 = [[TRStudent alloc] init];//引用计数器为1
		student = student2;//引用计数器为2
		[student2 study];
	}//这里就自动减1
	[student study];
	NSLog(@"if block ends");

}
int main(int argc, const char * argv[])
{

	@autoreleasepool {
		__weak TRStudent *student = nil;
		if (1==1) {
			NSLog(@"if block begins");
			__strong TRStudent *student2 = [[TRStudent alloc] init];//引用计数器为1
			student = student2;//弱引用计数器不会加1，所以还是为1，
			[student2 study];
			//"在销毁对象之前，向弱引用发送了消息，此时弱引用会变成强引用"这种情况在最新的ios7就不成立了，还是原来的弱引用！！！
			[student study];
		}//这里就自动减为0了
		[student study];//没有任何效果
		NSLog(@"if block ends");
	}//引用为0
    return 0;
}

