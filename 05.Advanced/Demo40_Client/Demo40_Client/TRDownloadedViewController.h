//
//  TRDownloadedViewController.h
//  Demo40_Client
//
//  Created by Patrick Yu on 8/29/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TRFile.h"
#import "AsyncSocket.h"

@interface TRDownloadedViewController : UIViewController <AsyncSocketDelegate>
@property (nonatomic,strong) TRFile *downloadedFile;
@end
