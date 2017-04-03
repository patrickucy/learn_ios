//
//  TRStudent.h
//  day05-encapsulation
//
//  Created by Patrick Yu on 6/12/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRStudent : NSObject
{
	int i;
@public int i2;
	@package int i3;
@protected int i4;
@private int i5;
}
@end
