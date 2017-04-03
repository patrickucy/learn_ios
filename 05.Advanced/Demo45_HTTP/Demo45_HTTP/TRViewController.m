//
//  TRViewController.m
//  Demo45_HTTP
//
//  Created by Yu on 9/4/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)tap:(UIButton *)sender
{
//	www.webxml.com.cn 你可以用这个网站提供的接口来作测试
	
	
	//**********  get请求(手机号码来源查询)  *********
	
//	NSURL *url = [NSURL URLWithString:@"http://webservice.webxml.com.cn/WebServices/MobileCodeWS.asmx/getMobileCodeInfo?mobileCode=13434272647&userID="];
//	NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
//	//[request setHTTPMethod:@"GET"];//因为默认是get方式,所以这行代码加不加都是一样的
//	NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
//	//html代码
//	NSString *string = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//	NSLog(@"%@",string);//得到你在Safari的开发模式下看到的源代码是一模一样的,然而这个html的解析你是不需要关注的,重点是如何数据交互
	
	
	
//	//**********  post请求(手机号码来源查询)  ********
	
//	NSURL *url = [NSURL URLWithString:@"http://webservice.webxml.com.cn/WebServices/MobileCodeWS.asmx/getMobileCodeInfo"];
//	NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
//	// 这行代码就是将上面的请求变成post请求
//	[request setHTTPMethod:@"POST"];
//	//这样子的话,下面这个参数就不会显示在请求地址里面,从而达到了保护数据的目的
//	[request setHTTPBody:[@"mobileCode=13434272647&userID=" dataUsingEncoding:NSUTF8StringEncoding]];
//	
//	NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
//	//	html代码
//	NSString *string = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//	NSLog(@"%@",string);
	
	
	
	//**********  get请求(城市天气查询)  ********

//	NSString *urlString = @"http://webservice.webxml.com.cn/WebServices/WeatherWS.asmx/getWeather?theCityCode=广州&theUserID=";
//	//进行URL编码(因为你的URL里面出现了中文,实际上后面的都一样)
//	NSString *encodedURLString = [urlString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
//	NSURL *url = [NSURL URLWithString:encodedURLString];
//	NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
//	
//	NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
//	//	html代码
//	NSString *string = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//	NSLog(@"%@",string);
//	
	
	
	//**********  get请求(百度音乐)  ********
	
	//百度音乐的API,你可以直接打进safari地址栏看看有没有东西
	//http://box.zhangmen.baidu.com/x?op=12&count=1&title=歌名$$歌手$$$$

	NSString *urlString = @"http://box.zhangmen.baidu.com/x?op=12&count=1&title=怒放的生命$$汪峰$$$$";
	//进行URL编码(因为你的URL里面出现了中文,实际上后面的都一样)
	NSString *encodedURLString = [urlString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
	NSURL *url = [NSURL URLWithString:encodedURLString];
	NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
	
	NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
	//	html代码
	NSString *string = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
	NSLog(@"%@",string);
	
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
