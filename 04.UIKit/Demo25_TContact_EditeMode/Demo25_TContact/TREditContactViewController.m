//
//  TREditContactViewController.m
//  Demo25_TContact_EditMode
//
//  Created by Patrick Yu on 7/1/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TREditContactViewController.h"

@interface TREditContactViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *ageTextField;
@property (weak, nonatomic) IBOutlet UITextField *phoneTextField;

@end

@implementation TREditContactViewController

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
	self.title = @"Edit Contact";
	self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(doneButtonDidTap:)];
	self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(cancelButtonDidTap:)];
}

-(void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
	self.nameTextField.text = self.contact.name;
	self.ageTextField.text = [NSString stringWithFormat:@"%d",self.contact.age];
	self.phoneTextField.text = self.contact.phoneNumber;
	
}

-(void)doneButtonDidTap:(id)sender
{
	self.contact.name = self.nameTextField.text;
	self.contact.age = [self.ageTextField.text integerValue];
	self.contact.phoneNumber = self.phoneTextField.text;
	[self dismissViewControllerAnimated:YES completion:nil];
}

-(void)cancelButtonDidTap:(id)sender
{
	[self dismissViewControllerAnimated:YES completion:nil];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
