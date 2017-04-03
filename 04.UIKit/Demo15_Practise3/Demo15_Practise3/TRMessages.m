//
//  TRMessages.m
//  Demo8_Practise2
//
//  Created by Patrick Yu on 6/24/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRMessages.h"

@implementation TRMessages
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.displayedMessages = [[NSMutableArray alloc] init];
    }
    return self;
}
@end
