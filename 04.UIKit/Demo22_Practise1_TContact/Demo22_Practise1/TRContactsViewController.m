//
//  TRContactsViewController.m
//  Demo22_Practise1
//
//  Created by Patrick Yu on 6/29/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRContactsViewController.h"
#import "TRAddContactViewController.h"
#import "TRContact.h"
#import "TRContactViewController.h"

@interface TRContactsViewController () <TRAddContactDelegate>

@end

@implementation TRContactsViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
	self.contacts = [[NSMutableArray alloc] init];

	self.title = @"All Contacts";
	self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addButtonDidTap:)];
}

-(void)addButtonDidTap:(id)sender
{
	TRAddContactViewController *addContactViewController = [[TRAddContactViewController alloc] initWithNibName:@"TRAddContactViewController" bundle:nil];
	UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:addContactViewController];
	addContactViewController.delegate = self;
	[self presentViewController:navigationController animated:YES completion:nil];
}

-(void)addContactViewController:(TRAddContactViewController *)addContactViewController addContact:(TRContact *)contact
{
	[self.contacts addObject:contact];
	NSIndexPath *indexPath = [NSIndexPath indexPathForRow:[self.contacts count] -1 inSection:0];
	[self.tableView	insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];

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
    return [self.contacts count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];;
    }
    // Configure the cell...
	TRContact *contact = self.contacts[indexPath.row];
	cell.textLabel.text = contact.name;
    return cell;
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


#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here, for example:
    // Create the next view controller.
    TRContactViewController *detailViewController = [[TRContactViewController alloc] initWithNibName:@"TRContactViewController" bundle:nil];
    
    // Pass the selected object to the new view controller.
    detailViewController.contact = self.contacts[indexPath.row];
    // Push the view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
}


@end
