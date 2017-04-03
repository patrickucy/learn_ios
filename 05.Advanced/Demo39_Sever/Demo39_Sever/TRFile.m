//
//  TRFile.m
//  Demo40_Client
//
//  Created by Patrick Yu on 8/29/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRFile.h"

@implementation TRFile
- (void)encodeWithCoder:(NSCoder *)aCoder
{
	[aCoder encodeObject:self.name forKey:@"name"];
	[aCoder encodeObject:self.path forKey:@"path"];
	[aCoder encodeInt64:self.length forKey:@"length"];
}


- (id)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
    if (self) {
        self.name = [aDecoder decodeObjectForKey:@"name"];
		self.path = [aDecoder decodeObjectForKey:@"path"];
		self.length = [aDecoder decodeInt64ForKey:@"length"];
    }
    return self;
}



@end
