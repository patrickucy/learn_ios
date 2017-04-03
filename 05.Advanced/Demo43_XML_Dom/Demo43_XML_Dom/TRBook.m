//
//  TRBook.m
//  Demo42_XML_Sax
//
//  Created by Yu on 9/4/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRBook.h"

@implementation TRBook
-(NSString *)description
{
	return [NSString stringWithFormat:@"%@ %@ %d %d",self.name,self.author,self.price,self.page];
}
@end
