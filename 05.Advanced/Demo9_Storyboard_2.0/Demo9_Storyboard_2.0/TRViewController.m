//
//  TRViewController.m
//  Demo9_Storyboard_2.0
//
//  Created by Patrick Yu on 8/12/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	[NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(jumpPage) userInfo:nil repeats:NO];
}

-(void)jumpPage
{
	//通过这个标识就可以指定跳转特定的 view 里面
	int random = arc4random() % 2;
	if (random ==0) {
		[self performSegueWithIdentifier:@"firstSegue" sender:@"abc"];
	}else {
		[self performSegueWithIdentifier:@"secondSegue" sender:@"abc"];
	}
	
	
	//这个 sender 传参传到了当前的这个 prepareForSegue 的 sender 的参数里面去了
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
	NSLog(@"%@",sender);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
