//
//  TRDownloadedViewController.m
//  Demo40_Client
//
//  Created by Patrick Yu on 8/29/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRDownloadedViewController.h"
#import "TRUtils.h"

@interface TRDownloadedViewController ()
@property (weak, nonatomic) IBOutlet UIProgressView *myProgressView;
@property (nonatomic,strong) AsyncSocket *clientSocket;
@property (nonatomic,strong) NSMutableData *fileData;
@end

@implementation TRDownloadedViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	self.fileData = [NSMutableData data];
	
	self.clientSocket = [[AsyncSocket alloc] initWithDelegate:self];
	[self.clientSocket connectToHost:@"192.168.1.104" onPort:8000 error:nil];
	NSString *headerString = [NSString stringWithFormat:@"download&&%@&&",self.downloadedFile.name];
	NSMutableData *sendData = [TRUtils getDataByHeaderString:headerString];
	[self.clientSocket writeData:sendData withTimeout:-1 tag:0];
	[self.clientSocket readDataWithTimeout:-1 tag:0];
}

-(void)onSocket:(AsyncSocket *)sock didReadData:(NSData *)data withTag:(long)tag
{
	[self.fileData appendData:data];
	//不加1.0的话就不会是float类型,那么这个数就只可能是0或者1
	self.myProgressView.progress = self.fileData.length * 1.0 / self.downloadedFile.length;
	if (self.fileData.length == self.downloadedFile.length) {
		NSString *newPath = [@"/Users/patrickyu/Developer/Tarena iOS/00.Resources" stringByAppendingPathComponent:self.downloadedFile.name];
		[self.fileData writeToFile:newPath atomically:YES];
	}
	[sock readDataWithTimeout:-1 tag:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
