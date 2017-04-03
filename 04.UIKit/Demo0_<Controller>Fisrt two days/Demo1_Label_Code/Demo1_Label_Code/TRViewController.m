//
//  TRViewController.m
//  Demo1_Label_Code
//
//  Created by Patrick Yu on 6/22/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

//class extension
@interface TRViewController ()//this is a special category

@property (nonatomic,retain) UILabel *myLabel;//9.let it become a global variable

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	//you can set your big view background color to yellow
	self.view.backgroundColor = [UIColor yellowColor];
	
	//1.label initialization
	self.myLabel = [[UILabel alloc] init];
	
	//2.change text and color for label
	self.myLabel.text = @"hello world";
	self.myLabel.backgroundColor = [UIColor greenColor];
	
	//3.define your label's position and size
	self.myLabel.frame = CGRectMake(10, 60, 300, 40);

	//4.put your label on your big view(but nothing shows up)
	[self.view addSubview:self.myLabel];
	
	//5.button initialization with different types(factory method)
	UIButton *myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	
	//6.alter your button text
	[myButton setTitle:@"tap me" forState:UIControlStateNormal];
	
	//7.put your buttom to your big view after defining your ViewRect
	myButton.frame = CGRectMake(50, 100, 200, 100);
	[self.view addSubview:myButton];
	
	//8.link your button to certain event(later you can do this with control drag)
	[myButton addTarget:self action:@selector(changeText) forControlEvents:UIControlEventTouchUpInside];
}




-(void)changeText
{
	//10.this this where you code how to deal with the event
	self.myLabel.backgroundColor = [UIColor redColor];
	self.myLabel.text = [[NSDate date] description];
	UILabel *newLabel = [[UILabel alloc] init];
	newLabel.frame =CGRectMake(90, 200, 200, 60);
	newLabel.text= @"hello";
	[self.view addSubview:newLabel];
	
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
