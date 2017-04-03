//
//  TRViewController.m
//  Demo38_SocketServer
//
//  Created by Patrick Yu on 8/29/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRUtils.h"

@class AsyncSocket;

@interface TRViewController ()
@property (nonatomic,strong) AsyncSocket *serverSocket;
@property (nonatomic,strong) AsyncSocket *myNewSocket;
@property (nonatomic,strong) AsyncSocket *clientSocket;
@property (nonatomic,copy) NSString *host;
@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


-(void)onSocket

-(void)clientAction
{
	//2.请求链接
	[self.clientSocket connectToHost:self.ipTF.text onPort:8000 error:nil];
	NSString *sendInfo = self.sendInfoTf.text;
	NSMutableData *sendAllData = nil;
	if ([sendInfo hasPrefix:@"/"]) {//文件
		
		NSString *filePath = sendInfo;
		NSData *sendFileData = [NSData dataWithContentsOfFile:filePath];
		NSString *headerString = [NSString stringWithFormat:@"file&&%@&&%d",[filePath lastPathComponent],sendFileData.length];
		sendAllData = [TRUtils getDataByHeaderString:headerString];
		[sendAllData appendData:sendFileData];
		
	}else {//文本
		
		NSData *textData = [sendInfo dataUsingEncoding:NSUTF8StringEncoding];
//		消息头里面的信息有,消息类型, 文件名和文件长度
//		准备发送文本的消息头
		NSString *headerString = @"text&& && ";
		//创建100个长度的data把header把header加进去
		NSMutableData *sendAllData = [TRUtils getDataByHeaderString:headerString];
		
		[sendAllData appendData:textData];
		
	}
	[self.clientSocket writeData:sendAllData withTimeout:-1 tag:0];
	
	//发送的内容显示到界面当中
	self.myTV.text = [self.myTV.text stringByAppendingFormat:@"\n我说%@",sendInfo];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
