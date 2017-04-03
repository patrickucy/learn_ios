//
//  TRViewController.m
//  Demo26_CoreData
//
//  Created by Patrick Yu on 8/20/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRAppDelegate.h"
#import "Person.h"
@interface TRViewController ()

@end

@implementation TRViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//	//通过这种方式可以在代码的任何地方得到  TRAppDelegate  并访问它的属性
//	TRAppDelegate *app = [UIApplication sharedApplication].delegate;
	
	NSLog(@"%@",NSHomeDirectory());
	
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

- (IBAction)buttonsTap:(UIButton *)sender
{
	//通过这种方式可以在代码的任何地方得到  TRAppDelegate  并访问它的属性

	TRAppDelegate *app = [UIApplication sharedApplication].delegate;
	
	switch (sender.tag) {
		case 0://add(这个概念是基础)
		{
			Person *p = [NSEntityDescription insertNewObjectForEntityForName:@"Person" inManagedObjectContext:app.managedObjectContext];
			p.name = @"zhang san";
			p.age = @22;
			[app saveContext];//也就是提交本次更改
		}
			break;
			
		case 1://delete (建立在 list 之上)
		{
			//1.创建查询请求
			NSFetchRequest *request = [[NSFetchRequest alloc] initWithEntityName:@"Person"];
			//2.执行查询,得到返回数据
			NSArray *persons = [app.managedObjectContext executeFetchRequest:request error:nil];
			for (Person *p in persons) {
				if ([p.name isEqualToString:@"zhang san"]) {
					//删除该对象
					[app.managedObjectContext deleteObject:p];
				}
			}
			[app saveContext];
		}
			break;
			
		case 2://edit (建立在 delete 之上)
		{
			//1.创建查询请求
			NSFetchRequest *request = [[NSFetchRequest alloc] initWithEntityName:@"Person"];
			//2.执行查询,得到返回数据
			NSArray *persons = [app.managedObjectContext executeFetchRequest:request error:nil];
			for (Person *p in persons) {
				if ([p.name isEqualToString:@"zhang san"]) {
					//修改该对象
					p.name = @"wang hu";
					p.age = @27;
				}
			}
			[app saveContext];
		}
			break;
			
		case 3://list(建立在 add 之上)
		{
			NSLog(@"Listing...");
			//1.创建查询请求
			NSFetchRequest *request = [[NSFetchRequest alloc] initWithEntityName:@"Person"];
			//2.执行查询,得到返回数据
			NSArray *persons = [app.managedObjectContext executeFetchRequest:request error:nil];
			for (Person *p in persons) {
				NSLog(@"%@ %@",p.name,p.age);
			}
		}
			break;
	}
}
@end
