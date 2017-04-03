//
//  TRViewController.h
//  Demo3_PlantsVSZombies
//
//  Created by Patrick Yu on 8/10/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TRViewController : UIViewController
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *boxes;
@property (weak, nonatomic) IBOutlet UILabel *sunCountLabel;

@end
