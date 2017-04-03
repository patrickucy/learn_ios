//
//  TRViewController.h
//  Demo4_SimpleMVC
//
//  Created by Patrick Yu on 6/23/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TRViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *accountTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
- (IBAction)register:(id)sender;

@end
