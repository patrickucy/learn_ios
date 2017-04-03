//
//  TRServerFileListViewController.m
//  Demo40_Client
//
//  Created by Patrick Yu on 8/29/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRServerFileListViewController.h"
#import "TRUtils.h"
#import "TRDownloadedViewController.h"

@interface TRServerFileListViewController ()
@property (nonatomic,strong) AsyncSocket *clientSocket;
@property (nonatomic,strong) NSMutableArray *files;
@end

@implementation TRServerFileListViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
	
	self.clientSocket = [[AsyncSocket alloc] initWithDelegate:self];
	[self.clientSocket connectToHost:@"192.168.1.104" onPort:8000 error:nil];
	NSString *headerString = @"getFileList&& &&";
	NSMutableData *sendAllData = [TRUtils getDataByHeaderString:headerString];
	[self.clientSocket writeData:sendAllData withTimeout:-1 tag:0];
	//向服务器索取数据,所以需要立即读取
	[self.clientSocket readDataWithTimeout:-1 tag:0];
	
}

//当服务器返回数据的时候会调用此方法
-(void)onSocket:(AsyncSocket *)sock didReadData:(NSData *)data withTag:(long)tag
{
	NSKeyedUnarchiver *unArch = [[NSKeyedUnarchiver alloc] initForReadingWithData:data];
	self.files = [unArch decodeObjectForKey:@"files"];
	[self.tableView reloadData];
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

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	TRFile *file = self.files[indexPath.row];
	//跟LocalFileListViewController的剩下的内容就很像了
	[self performSegueWithIdentifier:@"download" sender:file];
	
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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
	TRDownloadedViewController *downloadViewController = segue.destinationViewController;
	downloadViewController.downloadedFile = sender;
}

@end
