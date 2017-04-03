//
//  TRViewController.m
//  Demo13_Navigation_Controller
//
//  Created by Patrick Yu on 6/25/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRSecondViewController.h"

@interface TRViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

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
    // Do any additional setup after loading the view from its nib.
	self.title = @"First View";
	
	self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Cancel" style:UIBarButtonItemStyleBordered target:nil action:nil];
	
	UIBarButtonItem *b1 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(add:)];
	UIBarButtonItem *b2 = [[UIBarButtonItem alloc] initWithTitle:@"button2" style:UIBarButtonItemStyleBordered target:nil action:nil];
	self.navigationItem.rightBarButtonItems = @[b1,b2];
	
	//6. 设置 toolbar 上的按钮
	UIBarButtonItem *buttonRewind = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:nil action:nil];
	UIBarButtonItem *buttonFastForward = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:nil action:nil];
	UIBarButtonItem *buttonPlay = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemPlay target:nil action:nil];
	
	
	
	//7. flexible
	UIBarButtonItem *flexibaleButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
	
	//8. fixed space
	UIBarButtonItem *fixedSpaceLeft = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
	fixedSpaceLeft.width = 20;
	UIBarButtonItem *fixedSpaceRight = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
	fixedSpaceRight.width = 20;
	
	self.toolbarItems = @[fixedSpaceLeft,buttonRewind,flexibaleButton,buttonPlay,flexibaleButton,buttonFastForward,fixedSpaceRight];
	
	
	
	
}

-(void)add:(id)sender
{
	NSLog(@"add");
}
- (IBAction)tap:(id)sender
{
	TRSecondViewController *secondViewController = [[TRSecondViewController alloc] initWithNibName:@"TRSecondViewController" bundle:nil];
	[self.navigationController pushViewController:secondViewController animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
