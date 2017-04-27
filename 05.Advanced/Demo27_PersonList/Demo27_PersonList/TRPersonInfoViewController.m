//
//  TRPersonInfoViewController.m
//  Demo27_PersonList
//
//  Created by Patrick Yu on 8/20/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRPersonInfoViewController.h"
#import "Person.h"
#import "TRAppDelegate.h"

@interface TRPersonInfoViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation TRPersonInfoViewController

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
	if (self.editPerson) {
		
		self.title = @"Edit";
		self.nameTextField.text = self.editPerson.name;
		self.ageTextField.text = [NSString stringWithFormat:@"%@",self.editPerson.age];
		[self.button setTitle:@"Edit" forState:UIControlStateNormal];
	}else {
		self.title = @"Add";
	}
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

- (IBAction)buttonsTap:(UIButton *)sender
{
	NSString *name = self.nameTextField.text;
	NSNumber *age = [NSNumber numberWithInt:[self.ageTextField.text intValue]];
	TRAppDelegate *app = [UIApplication sharedApplication].delegate;
	if (self.editPerson) {
		self.editPerson.name = name;
		self.editPerson.age = age;
	
	}else {
		Person *p = [NSEntityDescription insertNewObjectForEntityForName:@"Person" inManagedObjectContext:app.managedObjectContext];
		p.name = name;
		p.age = age;
	}
	[app saveContext];
	[self dismissViewControllerAnimated:YES completion:nil];
}
@end
