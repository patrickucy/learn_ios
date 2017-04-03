//
//  TRViewController.m
//  Demo19_Snow_Animation
//
//  Created by Patrick Yu on 8/16/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()
@property (weak, nonatomic) IBOutlet UISlider *mySlider;
@property (strong,nonatomic) NSTimer *timer;
@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	self.timer = [NSTimer scheduledTimerWithTimeInterval:self.mySlider.value target:self selector:@selector(snowing) userInfo:nil repeats:YES];
	
}

- (IBAction)sliderValueChange:(UISlider *)sender
{
	[self.timer invalidate];
	//这段代码的意思是,每次滑动时都会开新的 timer
	self.timer = [NSTimer scheduledTimerWithTimeInterval: 0.101 - sender.value  target:self selector:@selector(snowing) userInfo:nil repeats:YES];
	
}

-(void)snowing
{
	UIImageView *snowImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"snow"]];
	snowImageView.frame = CGRectMake(arc4random() % 320, 0, 10, 10);
	[self.view addSubview:snowImageView];
	[UIView animateWithDuration: arc4random()%10 *1.0/10 + 3 animations:^{
		snowImageView.frame = CGRectMake(snowImageView.frame.origin.x + arc4random()%101-50, 500, 10, 10);
	} completion:^(BOOL finished) {
		[UIView animateWithDuration:1 animations:^{
			snowImageView.alpha = 0;
			
		} completion:^(BOOL finished) {
			[snowImageView removeFromSuperview];
		}];
	}];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
