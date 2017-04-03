//
//  TRAddContactViewController.m
//  Demo22_Practise1
//
//  Created by Patrick Yu on 6/29/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRAddContactViewController.h"

@interface TRAddContactViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *ageTextField;
@property (weak, nonatomic) IBOutlet UITextField *phoneTextField;

@end

@implementation TRAddContactViewController

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
	self.title = @"New Contact";
	self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(doneButtonDidTap:)];
	self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(cancelButtonDidTap:)];
}



-(void)doneButtonDidTap:(id)sender
{
	
	[self dismissViewControllerAnimated:YES completion:^{
		TRContact *newContact = [[TRContact alloc] init];
		newContact.name = self.nameTextField.text;
		newContact.age = [self.ageTextField.text integerValue];
		newContact.phoneNumber = self.phoneTextField.text;
		[self.delegate addContactViewController:self didAddContact:newContact];
	}];
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
