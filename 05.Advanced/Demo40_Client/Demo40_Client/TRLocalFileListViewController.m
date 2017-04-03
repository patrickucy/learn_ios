//
//  TRLocalFileListViewController.m
//  Demo40_Client
//
//  Created by Patrick Yu on 8/29/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRLocalFileListViewController.h"
#import "TRUtils.h"
#import "TRFile.h"

@interface TRLocalFileListViewController ()
@property (nonatomic,strong) NSMutableArray *files;
@property (nonatomic,strong) AsyncSocket *clientSocket;
@end

@implementation TRLocalFileListViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
	
	self.files = [TRUtils getFilesByDirectoryPath:@"/Users/patrickyu/Developer/Tarena iOS/00.Resources/AllKindOfFiles"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.files.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    TRFile *file = self.files[indexPath.row];
	cell.textLabel.text = file.name;
	cell.detailTextLabel.text = [NSString stringWithFormat:@"%lld",file.length];
	
	
	
    return cell;
}

//******************************以下是客户端的上传方式(服务器的接收方式)[两个端的代码是对应的]*******************************

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	TRFile *file = self.files[indexPath.row];
	NSData *fileData = [NSData dataWithContentsOfFile:file.path];
	NSString *headerString = [NSString stringWithFormat:@"upload&&%@&&%lld",file.name,file.length];
	NSMutableData *sendAllData = [TRUtils getDataByHeaderString:headerString];
	[sendAllData appendData:fileData];
	
	self.clientSocket = [[AsyncSocket alloc] initWithDelegate:self];
	[self.clientSocket connectToHost:@"192.168.1.104" onPort:8000 error:nil];
	[self.clientSocket writeData:sendAllData withTimeout:-1 tag:0];
}

-(void)onSocket:(AsyncSocket *)sock didWriteDataWithTag:(long)tag
{
	UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Message" message:@"Content uploaded successfully!" delegate:self cancelButtonTitle:@"Done" otherButtonTitles:nil, nil];
	[alertView show];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

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
