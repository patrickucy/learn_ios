//
//  TRUtils.m
//  Demo38_SocketServer
//
//  Created by Patrick Yu on 8/29/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRUtils.h"

@implementation TRUtils
+(NSMutableData *)getDataByHeaderString:(NSString *)string
{
	NSData *headerData = [string dataUsingEncoding:NSUTF8StringEncoding];
	NSMutableData *md = [NSMutableData dataWithLength:100];
	[md replaceBytesInRange:NSMakeRange(0, headerData.length) withBytes:headerData.bytes];
	return md;
}
@end
