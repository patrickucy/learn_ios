//
//  TRTableViewController.m
//  Demo27_PersonList
//
//  Created by Patrick Yu on 8/20/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRTableViewController.h"
#import "Person.h"
#import "TRAppDelegate.h"
#import "TRPersonInfoViewController.h"

@interface TRTableViewController ()
@property (nonatomic,strong) NSArray *persons;
@property (nonatomic,weak) TRAppDelegate *app;//注意这个的内存管理描述
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
	self.navigationItem.rightBarButtonItem = self.editButtonItem;
	
	self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addPerson)];
	
	
}

-(void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
	//你会发现你reloadData 之后,界面并没有改变
	[self.tableView reloadData];
}

-(void)addPerson
{
	[self performSegueWithIdentifier:@"personInfo" sender:nil];
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
	self.app = [UIApplication sharedApplication].delegate;
	NSFetchRequest *request = [[NSFetchRequest alloc] initWithEntityName:@"Person"];
	self.persons = [self.app.managedObjectContext executeFetchRequest:request error:nil]; // 这个方法也就是说返回一个数组类型
	
    return self.persons.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    Person *p = self.persons[indexPath.row];
	cell.textLabel.text = p.name;
	cell.detailTextLabel.text = [NSString stringWithFormat:@"%@",p.age];
	
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	Person *p = self.persons[indexPath.row];
	
	[self performSegueWithIdentifier:@"personInfo" sender:p];//这里的 sender 是直接传到 prepareForSegue 里面的
	
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
		Person *p = self.persons[indexPath.row];
		//这里只是删除了数据库的对象,你并没有用代码删除数组中的对象,但是每次显示 tableView 都会查询数据层,所以也就不用再写代码删除数组里面对应的对象了,也就是逻辑的设计已经帮你做了删除数组里面对应数据的操作
		[self.app.managedObjectContext deleteObject:p];
		//删除完后,数组发生了改变,只不过没有立即发生改变,在下次进到此方法的时候,数据已经删除掉了,***比如说你 addSubview 了一个 button, 这行代码是不会立刻执行的,只会在所有的界面因素都加载好了才一次性全部渲染到屏幕上***
		[self.app saveContext];
		//这行代码一定要写在最后,要不然程序会奔溃,因为一旦你先删除了, indexpath 的 row 就变化了,就没办法在数据层来善处对象了
		[tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];

    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}


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
// 用 segue 跳转,在此方法里面传参
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
	TRPersonInfoViewController *personInfoViewController =  segue.destinationViewController;
	personInfoViewController.editPerson = sender;
}


@end
