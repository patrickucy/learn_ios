//
//  TRStudent.h
//  day03-practise
//
//  Created by Patrick Yu on 6/20/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRStudent : NSObject <NSCopying>
@property (nonatomic,strong) NSString *name;
@property (nonatomic) NSInteger age;
-(id)initWithName:(NSString *)name andAge:(NSInteger)age;
-(NSComparisonResult)compareStudentName:(TRStudent*)otherStudent;
-(NSComparisonResult)compareStudentAge:(TRStudent*)otherStudent;
-(NSComparisonResult)compareStudentAgeThenName:(TRStudent *)otherStudent;

@end
