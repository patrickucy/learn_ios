//
//  main.m
//  day03-06-NSArray
//
//  Created by Patrick Yu on 6/20/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRAnimal.h"
#import "TRDog.h"
#import "TRCat.h"

int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    NSArray *array = [NSArray arrayWithObjects:@"one",@"two",@"three", nil];
		NSArray *array2 = @[@192,@168,@1,@253];
	    NSArray *array3 = [array arrayByAddingObjectsFromArray:array2];//相当于把两个数组的元素合成一个新的数组
		NSLog(@"%@",array3);
		
		NSString *strArray = [array2 componentsJoinedByString:@"."];
		NSLog(@"%@",strArray);
		NSArray *array4 = [strArray componentsSeparatedByString:@"."];
		NSLog(@"%@",array4);
		//1~100,1~100 北京
		//101~200.101~200 广州
		//像处理这种IP地址的方式用string的method就没办法区分了，只有把string拆解成array就能通过比较数字来判断了
		
		NSString *ip = @"192.168.0.1";
		NSArray *ipArray = [ip componentsSeparatedByString:@"."];
		NSLog(@"%@",ipArray);
		
		NSArray *array5 = [NSArray arrayWithObjects:@"one",@"two",@"three", nil];
		BOOL boolean = [array5 containsObject:@"two"];
		if (boolean) {
			NSLog(@"array5 contains object two");
		}
		long index = [array5 indexOfObject:@"two"];
		NSLog(@"index %ld",index);
		NSString *lastString = [array5 lastObject];
		NSLog(@"%@",lastString);
		
		
		TRAnimal *animal = [[TRAnimal alloc] init];
		TRDog *dog = [[TRDog alloc] init];
		TRCat *cat = [[TRCat alloc] init];
		
		NSArray *animals = [NSArray arrayWithObjects:animal,dog,cat, nil];
		[animals makeObjectsPerformSelector:@selector(eat)]; // 当然，数组中所有对象必须拥有该消息，否则会发生运行错误
		
		
		//1.初始化方法
		NSMutableArray *mArray = [[NSMutableArray alloc] init];
		NSMutableArray *mArray2 = [NSMutableArray arrayWithObjects:@"one",@"two",@"three", nil];
		NSMutableArray *mArray3 = [NSMutableArray arrayWithArray:mArray2];
		NSLog(@"mArray3:%@",mArray3);
		
		//2.向数组添加一个元素
		[mArray3 addObject:@"four"];
		NSLog(@"mArray3:%@",mArray3);
		
		//3.向指定索引位置添加一个元素
		[mArray3 insertObject:@"1" atIndex:1];
		NSLog(@"mArray3:%@",mArray3);
		
		//4.删除数组中指定索引元素
		[mArray3 removeObjectAtIndex:0];
		NSLog(@"mArray3:%@",mArray3);
		
		//5.删除数组中指定的对象
		[mArray3 removeObject:@"1"];
		NSLog(@"mArray3:%@",mArray3);
		
		//6.替换指定索引的元素
		[mArray3 replaceObjectAtIndex:2 withObject:@"4"];
		NSLog(@"mArray3:%@",mArray3);
		
		//7.删除数组中所有元素
		[mArray3 removeAllObjects];
		NSLog(@"mArray3:%@",mArray3);
		
		//8.向数组中添加一个新的数组
		NSMutableArray *newArray = [NSMutableArray arrayWithObjects:@"one",@"two",@"three", nil];
		NSMutableArray *newArray2 = [NSMutableArray arrayWithObjects:@"1",@"2",@"3", nil];
		//[newArray addObjectsFromArray:newArray2]; // 将两个数组中的元素合并在一起
		[newArray addObject:newArray2]; //和上面这句话是完全不同的！！将第二个数组当成当前一个数组的其中一个元素添加进去
		NSLog(@"newArray:%@",newArray);
	
		
	}
    return 0;
}

