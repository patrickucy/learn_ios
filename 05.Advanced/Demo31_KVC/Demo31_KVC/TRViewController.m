//
//  TRViewController.m
//  Demo31_KVC
//
//  Created by Patrick Yu on 8/25/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRPerson.h"

@interface TRViewController ()

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	TRPerson *p1 = [[TRPerson alloc] init];
	p1.name = @"zhang san";
	p1.age = 20;
	
	
	//KVC的 setter 方法
	TRPerson *p2 = [[TRPerson alloc] init];
	[p2 setValue:@"zhang san" forKey:@"name"];
	[p2 setValue:[NSNumber numberWithInt:20] forKey:@"age"];
	//KVC 取对象中的对象属性
	p2.father = [[TRPerson alloc] init];
	[p2 setValue:@"Zhang jiujiu" forKeyPath:@"father.name"];
	[p2 setValue:[NSNumber numberWithInt:90] forKeyPath:@"father.age"];
	
	//KVC的 getter 方法
	NSString *name = [p2 valueForKey:@"name"];
	int age = [[p2 valueForKey:@"age"] intValue];
	NSLog(@"name: %@ age:%d",name,age);
	
	
	NSString *fatherName = [p2 valueForKeyPath:@"father.name"];
	int fatherAge = [[p2 valueForKeyPath:@"father.age"] intValue];
	NSLog(@"his father***** name:%@, age:%d",fatherName,fatherAge);

	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
