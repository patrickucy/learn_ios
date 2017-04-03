//
//  TRViewController.m
//  Demo41_UDP
//
//  Created by Patrick Yu on 8/29/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()
@property (strong,nonatomic) AsyncUdpSocket *udpSocket;
@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	//创建监听就可以收到UDP的广播了
	//1.创建udpSocket对象
	self.udpSocket = [[AsyncUdpSocket alloc] initWithDelegate:self];
	//2.绑定端口
	[self.udpSocket bindToPort:8000 error:nil];
	//3.是否开启广播
	[self.udpSocket enableBroadcast:YES error:nil];
	//4.开始读消息
	[self.udpSocket receiveWithTimeout:-1 tag:0];
	
	//每隔1秒检测谁在线
	[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(getAllPerson) userInfo:nil repeats:YES];
}

-(void)getAllPerson
{
	NSData *data = [@"谁在线" dataUsingEncoding:NSUTF8StringEncoding];
	[self.udpSocket sendData:data toHost:@"255.255.255.255" port:8000 withTimeout:-1 tag:0];
}


-(BOOL)onUdpSocket:(AsyncUdpSocket *)sock didReceiveData:(NSData *)data withTag:(long)tag fromHost:(NSString *)host port:(UInt16)port
{
	//5.如果收到消息,就会进入到这个方法里面
	NSString *info = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
	
	if (![host hasPrefix:@":"]) {//这里判断了一下就把ipv6的地址给过滤掉了
		NSLog(@"接收到 [%@] 说 [%@]",host,info);
		//接收到 [::ffff:192.168.1.103] 说 [你好!!!] 这里的ffff代表的是ipv6的地址,具体你不用管了
	}
	
	//如果有人问谁在线,我就给他响应一下
	if ([info isEqualToString:@"谁在线"]) {
		[self.udpSocket sendData:[@"我在线" dataUsingEncoding:NSUTF8StringEncoding] toHost:host port:8000 withTimeout:-1 tag:0];
	}else if ([info isEqualToString:@"我在线"]){
//		把此时的host保存进tableView里面,并且刷新tableView
	}


	
	
	//如果没有读完,继续读
	[sock receiveWithTimeout:-1 tag:0];
	return YES;
}

- (IBAction)tap:(UIButton *)sender
{
	NSData *data = [@"你好!!!" dataUsingEncoding:NSUTF8StringEncoding];
	//四个255的ip表示往整个网段发送消息
	[self.udpSocket sendData:data toHost:@"255.255.255.255" port:8000 withTimeout:-1 tag:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
