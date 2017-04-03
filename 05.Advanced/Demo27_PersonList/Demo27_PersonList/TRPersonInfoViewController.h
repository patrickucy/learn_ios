//
//  TRPersonInfoViewController.h
//  Demo27_PersonList
//
//  Created by Patrick Yu on 8/20/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@interface TRPersonInfoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *ageTextField;

@property (nonatomic,strong) Person *editPerson;
- (IBAction)buttonsTap:(UIButton *)sender;

@end
