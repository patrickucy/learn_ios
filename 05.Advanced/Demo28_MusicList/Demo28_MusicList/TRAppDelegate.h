//
//  TRAppDelegate.h
//  Demo28_MusicList
//
//  Created by Patrick Yu on 8/21/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface TRAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) AVAudioPlayer *player;

@end
