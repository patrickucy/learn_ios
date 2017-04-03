//
//  TRMusic.h
//  Demo35_TMusic_Practise
//
//  Created by Patrick Yu on 7/3/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRMusic : NSObject
@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *album;
@property (nonatomic,copy) NSString *artist;
@property (nonatomic) NSTimeInterval duration;
@property (nonatomic) BOOL highQuality;
@property (nonatomic) BOOL downloaded;
+(NSArray *)demoData;
-(NSString *) durationInString:(NSTimeInterval) duration;
@end
