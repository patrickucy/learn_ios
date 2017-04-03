//
//  TRAddMemoViewController.h
//  Demo22_TableView_Memos
//
//  Created by Patrick Yu on 6/29/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TRAddMemoViewController;
@protocol TRAddMemoDelegate <NSObject>

-(void)addMemoViewController:(TRAddMemoViewController *)addMemoViewController
						 add:(NSString *)memo;

@end

@interface TRAddMemoViewController : UIViewController
@property (nonatomic,weak) id <TRAddMemoDelegate> delegate;
@end
