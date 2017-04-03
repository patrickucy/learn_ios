//
//  TRSecondViewController.h
//  Demo8_Storyboard
//
//  Created by Patrick Yu on 8/11/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TRViewController.h"

@interface TRSecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (strong,nonatomic) NSString *string;
@property (nonatomic,weak) TRViewController *delegate;
@end
