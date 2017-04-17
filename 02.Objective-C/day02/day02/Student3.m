//
//  Student3.m
//  day02
//
//  Created by Patrick Yu on 6/10/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "Student3.h"

@implementation Student3
{
	int age2; //实例变量声明，可以放在.h文件中，也可以放在.m中；.m中实例变量是私有的，只有当前对象才可以访问
}
-(int)getAge{
	return age;
}

-(void)setAge:(int)newAge
{
	age = newAge;  //这里就会出现重名了，虽然你的意图数参数传给成员变量
}
- (void)test {
    NSLog(@"hello world");
}
@end
