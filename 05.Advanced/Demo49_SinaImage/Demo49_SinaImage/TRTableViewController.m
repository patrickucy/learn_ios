//
//  TRTableViewController.m
//  Demo49_SinaImage
//
//  Created by Yu on 10/6/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRTableViewController.h"

@interface TRTableViewController ()
@property (nonatomic, strong) NSMutableArray *imagePaths;
@end

@implementation TRTableViewController

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
	
	
	
	[NSThread detachNewThreadSelector:@selector(findImage) toTarget:self withObject:nil];
	
}

-(void)findImage
{
	NSURL *url = [NSURL URLWithString:@"http://www.sina.com.cn"];
	//	中国国标编码格式的方法
	NSStringEncoding encoding = CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000);
	NSString *sinaHtml = [NSString stringWithContentsOfURL:url encoding:encoding error:nil];
	//	NSLog(@"%@",sinaHtml);
	
	self.imagePaths = [NSMutableArray array];
	NSArray *arry = [sinaHtml componentsSeparatedByString:@"\""];
	for (NSString *string in arry) {
		if ([string hasSuffix:@".jpg"] && [string hasPrefix:@"http"]) {
			//			NSLog(@"%@",string);
			[self.imagePaths addObject:string];
		}
	}
//	上面的代码找到了图片之后
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
    return self.imagePaths.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    // Configure the cell...
//	为什么一开始的cell里面没有view呢?因为,一开始这个imageView的坐标是(0,0),而且,还有加载,解决的方案就是先给这个imageView里面放一个默认的图片,比如一个正在加载图片的图片
//	这里的galaxy图片是方便辨认,当然啦,一般还是用底色的相同的图片
	cell.imageView.image = [UIImage imageNamed:@"galaxy"];
	[NSThread detachNewThreadSelector:@selector(downloadImage:) toTarget:self withObject:@[indexPath,cell]];
	
    return cell;
}

-(void)downloadImage:(NSArray *)objects
{
	NSIndexPath *indexPath = objects[0];
	UITableViewCell *cell = objects[1];
	NSURL *url = [NSURL URLWithString:self.imagePaths[indexPath.row]];
	NSData *imageData = [NSData dataWithContentsOfURL:url];
	UIImage *image = [UIImage imageWithData:imageData];
	cell.imageView.image = image;
	[cell setNeedsDisplayInRect:cell.bounds];
//	[self performSelectorOnMainThread:@selector(updateUI:) withObject:@[cell,image] waitUntilDone:NO];
	cell.imageView.hidden = NO;
}

-(void)updateUI:(NSArray *)arry
{
	UITableViewCell *cell = arry[0];
	UIImage *image = arry[1];
	cell.imageView.image = image;

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
