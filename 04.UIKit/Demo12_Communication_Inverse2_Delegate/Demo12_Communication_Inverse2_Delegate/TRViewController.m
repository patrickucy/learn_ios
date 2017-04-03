//
//  TRViewController.m
//  Demo12_Communication_Inverse2_Delegate
//
//  Created by Patrick Yu on 6/25/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//



#import "TRViewController.h"
#import "TRSecondViewController.h"

@interface TRViewController () <TRSecondDelegate>
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}



- (IBAction)goToSecondViewButtonTapped
{
	TRSecondViewController *secondViewController = [[TRSecondViewController alloc] initWithNibName:@"TRSecondViewController" bundle:nil];
	
	// secondViewController.sourceViewController = self;
	secondViewController.delegate = self; //
	secondViewController.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	[self presentViewController:secondViewController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//#5(动刀1.3) 因为 C2需要 C1有这个消息来帮助 C2来反向传值给 C1
/*
-(void)updateMessage:(NSString *)message
{
	self.label.text = message;
}
 */

//#6(动刀1.4) 因为数据已经通过消息传过来了,不是通过属性传的,那么这里就不在需要 viewWillAppear 了
/*
-(void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:YES];
	self.label.text = self.message;
}
*/

-(void)secondViewController:(TRSecondViewController *)secondViewController updateMessage:(NSString *)message
{
	self.label.text = message;
}
@end

