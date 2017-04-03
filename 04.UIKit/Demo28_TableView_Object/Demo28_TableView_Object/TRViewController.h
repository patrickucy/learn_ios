//
//  TRViewController.h
//  Demo28_TableView_Object
//
//  Created by Patrick Yu on 7/1/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TRContact.h"

@interface TRViewController : UITableViewController
@property (nonatomic,strong) TRContact *contact;
@end
