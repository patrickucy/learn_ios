//
//  main.m
//  day03-4-NSDate
//
//  Created by Patrick Yu on 6/19/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

	@autoreleasepool {
		//初始化方法
	    NSDate *date1 = [[NSDate alloc] init];
		NSLog(@"date1:%@",date1); //世界标准时间
		
		//工厂方法
		NSDate *date2 = [NSDate date];
		NSLog(@"date2:%@",date2); //世界标准时间
		
		//2.得到一个时间和当前比延迟30秒
		NSDate *date3 = [NSDate dateWithTimeIntervalSinceNow:30]; //将来时间距离现在多少秒
		NSLog(@"date3:%@",date3);
		
		//3.得到明天此时此刻的时间
		NSDate *date4 = [NSDate dateWithTimeIntervalSinceNow:24*60*60];
		NSLog(@"tomorrow date4:%@",date4);
		
		//4.得到昨天的此时此刻
		NSDate *date5 = [NSDate dateWithTimeIntervalSinceNow:-24*60*60];
		NSLog(@"yesterday date5:%@",date5);
		
		//5.得到一个过去/将来的随机时间
		NSDate *date6 = [NSDate distantFuture];
		NSLog(@"date6:%@",date6);
		
		//7.和时间对比，返回秒数
		NSTimeInterval second = [date6 timeIntervalSince1970];
		NSLog(@"second:%lf",second);
		
		//8.比较两个时间哪个更早
		NSDate *date7 = [date1 earlierDate:date3];
		NSLog(@"date7:%@",date7);
		//9.比较两个时间哪个更晚
		NSDate *date8 = [date1 laterDate:date3];
		NSLog(@"date8:%@",date8);
		
		//10. 将世界标准时间转换成当地时间
		//创建一个模板对象，设置模板信息
		NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
		
		//HH24小时 hh12小时制
		//yyyy-MM-dd
		//hh:mm:ss
		dateFormatter.dateFormat = @"yyyy-MM-dd hh:mm:ss";
		//通过模板对象将当前时间转换成字符串
		NSString *dateString = [dateFormatter stringFromDate:date1];
		NSLog(@"date string:%@",dateString);
		
	    
	}
    return 0;
}

