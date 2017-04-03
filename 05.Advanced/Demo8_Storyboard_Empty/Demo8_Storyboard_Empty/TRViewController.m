//
//  TRViewController.m
//  Demo8_Storyboard_Empty
//
//  Created by Patrick Yu on 8/11/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRSecondViewController.h"

@interface TRViewController ()

@end

@implementation TRViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	NSLog(@"%@",self);
}
- (IBAction)buttonTouchUpInside:(UIButton *)sender
{
	/*
	//以前的传值方法
	TRSecondViewController *secondViewController = [[TRSecondViewController alloc] init];
	secondViewController.string = @"abc";
	[self presentViewController:secondViewController animated:YES completion:nil];
	*/
	
}


//页面跳转之前会执行这个方法,也就是以后传参的话就调用这个方法
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
	//这个显然就是自己的 Controller,
	//TRViewController *vc = segue.sourceViewController;
	//得到第二个页面对象
	TRSecondViewController *svc = segue.destinationViewController;
	svc.delegate = self;
	svc.string = self.textField.text;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
