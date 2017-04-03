//
//  TRContactViewController.m
//  Demo22_Practise1
//
//  Created by Patrick Yu on 6/29/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRContactViewController.h"
#import "TREditContactViewController.h"

@interface TRContactViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UILabel *phoneNumberLabel;

@end

@implementation TRContactViewController

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
	//	如果把数据放在这里就只会加载一次
	self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Edit" style:UIBarButtonItemStyleBordered target:self action:@selector(editContact:)];
}

-(void)editContact:(id)sender
{
	TREditContactViewController *editContactViewController = [[TREditContactViewController alloc] initWithNibName:@"TREditContactViewController" bundle:nil];
	UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:editContactViewController];
	editContactViewController.contact = self.contact;
	navigationController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	[self presentViewController:navigationController animated:YES completion:nil];
}

-(void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
	self.nameLabel.text = self.contact.name;
	self.ageLabel.text = [NSString stringWithFormat:@"%d",self.contact.age];
	self.phoneNumberLabel.text = self.contact.phoneNumber;
	
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
