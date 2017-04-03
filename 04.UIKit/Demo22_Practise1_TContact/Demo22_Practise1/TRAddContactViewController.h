//
//  TRAddContactViewController.h
//  Demo22_Practise1
//
//  Created by Patrick Yu on 6/29/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//



#import <UIKit/UIKit.h>
#import "TRContact.h"

@class TRAddContactViewController;
@protocol TRAddContactDelegate <NSObject>

-(void)addContactViewController:(TRAddContactViewController *)addContactViewController addContact:(TRContact *)contact;
@end

@interface TRAddContactViewController : UIViewController
@property (nonatomic,weak) id <TRAddContactDelegate> delegate;
@end
