//
//  TRViewController.m
//  Demo15_Practise1
//
//  Created by Patrick Yu on 6/26/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (nonatomic) CGFloat fontSize;
@end

@implementation TRViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
		self.fontSize =100;
	}
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
	NSLog(@"viewDidLoad");
	self.title = @"Eyesight Test";
	UIBarButtonItem *rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"I Can SEE" style:UIBarButtonItemStyleBordered target:self action:@selector(canSeeButtonDidTap)];
	self.navigationItem.rightBarButtonItem = rightBarButtonItem;
	self.label.text = @"E";
	self.label.font = [UIFont systemFontOfSize:self.fontSize];
	
}

-(void)canSeeButtonDidTap{
	NSLog(@"buttonTap");
	TRViewController *newView = [[TRViewController alloc] initWithNibName:@"TRViewController" bundle:nil];
	newView.fontSize = self.fontSize -10; //还是要搞清楚是什么对象干什么,
	[self.navigationController pushViewController: newView animated:YES];
	
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
