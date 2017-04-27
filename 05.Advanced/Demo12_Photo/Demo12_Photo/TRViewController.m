//
//  TRViewController.m
//  Demo12_Photo
//
//  Created by Patrick Yu on 8/12/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRUtils.h"
#import "TRAlbum.h"
#import "TRCell.h"

@interface TRViewController ()
@property (nonatomic,strong) NSArray *albums;
@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	self.albums = [TRUtils creatAlbumsByDirectoryPath:@"/Users/patrickyu/Desktop/pictures"];

}

#pragma mark - table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return [self.albums count];
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	
	//这个是旧方法,需要你自己判断是否有重用的 cell
	static NSString *identifier = @"Cell";
	TRCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
	if (!cell) {
		cell = [[TRCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
	}
	
//	//这个已经成为了默认的新方法, api 内部已经做了上面的那个是否有重用的工作,不过新方法要求你在 storyboard 里面对 cell 标记 identifier
//	TRCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

	
	TRAlbum *album = self.albums[indexPath.row];
	
	cell.textLabel.text = album.name;
	UIImage *image = [UIImage imageWithContentsOfFile:[album.imagePaths lastObject]];
	cell.imageView.image = image;
	cell.detailTextLabel.text = [NSString stringWithFormat:@"(%lu)",(unsigned long)album.imagePaths.count];
	return cell;
}

#pragma mark - table view delegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	TRAlbum *album = self.albums[indexPath.row];

}
@end
