//
//  TRViewController.m
//  Demo39_Sever
//
//  Created by Patrick Yu on 8/29/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRUtils.h"
#import "TRFile.h"

@interface TRViewController ()
@property (nonatomic,strong) AsyncSocket *serverSocket;
@property (nonatomic,strong) AsyncSocket *myNewSocket;
@property (nonatomic,strong) NSString *host;
@property (nonatomic,copy) NSString *receivedFileName;
@property (nonatomic) long long receivedFileLength;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@property (weak, nonatomic) IBOutlet UIProgressView *myProgressView;
@property (nonatomic,strong) NSMutableData *receivedFileData;
@end

@implementation TRViewController


//******************************以下是服务器的接收方式(客户端的上传)[两个端的代码是对应的]******************************
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	self.serverSocket = [[AsyncSocket alloc] initWithDelegate:self];
	[self.serverSocket acceptOnPort:8000 error:nil];
	
}

-(void)onSocket:(AsyncSocket *)sock didAcceptNewSocket:(AsyncSocket *)newSocket
{
	self.myNewSocket = newSocket;
	[self.myNewSocket readDataWithTimeout:-1 tag:0];
}

-(void)onSocket:(AsyncSocket *)sock didConnectToHost:(NSString *)host port:(UInt16)port
{
	self.host = host;
}

//10001
//100
//1
-(void)onSocket:(AsyncSocket *)sock didReadData:(NSData *)data withTag:(long)tag
{
	if (data.length >= 100) {
		
		//这段代码的意思是你每一次都会读取100个长度的数据,然而,到你读到最后的时候,没有100个数据给你读了,这个方法就会崩掉
		//所以要加上面的代码
		NSData *headerData = [data subdataWithRange:NSMakeRange(0, 100)];
		
		NSString *headerString = [[NSString alloc] initWithData:headerData encoding:NSUTF8StringEncoding];
		if (headerString && [headerString componentsSeparatedByString:@"&&"].count == 3) {
			NSArray *headers = [headerString componentsSeparatedByString:@"&&"];
			NSString *type = headers[0];
			if ([type isEqualToString:@"upload"]) {
				self.receivedFileName = headers[1];
				self.myLabel.text = [NSString stringWithFormat:@"%@ uploading file: %@",self.host,self.receivedFileName];
				
				self.receivedFileLength = [headers[2] longLongValue];
				self.receivedFileData = [NSMutableData data];
				NSData *subData = [data subdataWithRange:NSMakeRange(100, data.length-100)];
				[self.receivedFileData appendData:subData];
			}else if ([type isEqualToString:@"getFileList"]){
				self.myLabel.text = [NSString stringWithFormat:@"%@ requsting file List",self.host];
				//得到本地的文件的列表
				NSArray *files = [TRUtils getFilesByDirectoryPath:@"/Users/patrickyu/Developer/Tarena iOS/00.Resources/ReceiveFile"];
				//通过归档把数组转成data
				NSMutableData *mutableData = [NSMutableData data];
				NSKeyedArchiver *arch = [[NSKeyedArchiver alloc] initForWritingWithMutableData:mutableData];
				[arch encodeObject:files forKey:@"files"];
				[arch finishEncoding];
				//返回给客户端
				[sock writeData:mutableData withTimeout:-1 tag:0];
				
			}else if ([type isEqualToString:@"download"]){
				

				NSString *fileName = headers[1];
				NSString *filePath = [@"/Users/patrickyu/Developer/Tarena iOS/00.Resources/ReceiveFile" stringByAppendingPathComponent:fileName];
				self.myLabel.text = [NSString stringWithFormat:@"%@ requsting file: %@ for download",self.host,fileName];
				NSData *fileData = [NSData dataWithContentsOfFile:filePath];
				[sock writeData:fileData withTimeout:-1 tag:0];
			}
		}else{
			[self.receivedFileData appendData:data];
		}
	}else{// 如果接受到的数据不到100,就直接把剩下的最后的数据都给接受了,自己接保存
		[self.receivedFileData appendData:data];
	}
	
	
	
	self.myProgressView.progress = self.receivedFileData.length *1.0 / self.receivedFileLength;
	//判断是否接受完成
	if (self.receivedFileData.length == self.receivedFileLength ) {
		NSString *newPath = [NSString stringWithFormat:@"/Users/patrickyu/Developer/Tarena iOS/00.Resources/ReceiveFile/%@",self.receivedFileName];
		self.myLabel.text = [NSString stringWithFormat:@"%@ uploading file: %@ is DONE!!!",self.host,self.receivedFileName];

		[self.receivedFileData writeToFile:newPath atomically:YES];
		[self.receivedFileData setData:nil];
	}
	
	
	//如果一次没读完,接着读
	[sock readDataWithTimeout:-1 tag:0];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
