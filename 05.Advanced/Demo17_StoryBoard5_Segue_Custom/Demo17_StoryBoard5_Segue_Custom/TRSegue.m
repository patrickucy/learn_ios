//
//  TRSegue.m
//  Demo17_StoryBoard5_Segue_Custom
//
//  Created by Patrick Yu on 8/16/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRSegue.h"

@implementation TRSegue
-(void)perform
{
	UIViewController *fromVC = self.sourceViewController;
	UIViewController *toVC = self.destinationViewController;
	[fromVC presentViewController:toVC animated:YES completion:nil];
}

@end
