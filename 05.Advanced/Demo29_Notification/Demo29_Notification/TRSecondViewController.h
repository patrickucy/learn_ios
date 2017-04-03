//
//  TRSecondViewController.h
//  Demo29_Notification
//
//  Created by Patrick Yu on 8/25/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TRViewController.h"

@interface TRSecondViewController : UIViewController
@property (nonatomic, weak) id delegate;
@property (weak, nonatomic) IBOutlet UITextField *myTextField;

@end
