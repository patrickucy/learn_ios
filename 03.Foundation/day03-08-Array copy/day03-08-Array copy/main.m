//
//  main.m
//  day03-08-Array copy
//
//  Created by Patrick Yu on 6/21/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRStudent.h"

int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    TRStudent *student = [[TRStudent alloc] initWithName:@"zhangsan" andAge:18];
		TRStudent *student2 = [[TRStudent alloc] initWithName:@"lisi" andAge:28];
		
		NSArray *students = @[student,student2];
		NSArray *students2 = [[NSArray alloc] initWithArray:students copyItems:YES];
		
		NSLog(@"students address:%p",students);
		NSLog(@"students2 address:%p",students2);
		
		NSLog(@"students address:%@",students);
		NSLog(@"students2 address:%@",students2);
		
		NSLog(@"students[0]:%p",students[0]);
		NSLog(@"students2[0]:%p",students2[0]);
		//你会发现是浅拷贝！！！只是数组是新的，内部的对象还是同一个！！！！
		
		
		
	    
	}
    return 0;
}

