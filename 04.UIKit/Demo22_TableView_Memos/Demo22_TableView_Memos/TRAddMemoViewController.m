//
//  TRAddMemoViewController.m
//  Demo22_TableView_Memos
//
//  Created by Patrick Yu on 6/29/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRAddMemoViewController.h"

@interface TRAddMemoViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation TRAddMemoViewController

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
    // Do any additional setup after loading the view from its nib.

	self.title = @"Add Memo";
	self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(doneButtonDidTap:)];
	self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(cancelButtonDidTap:)];
}

-(void)doneButtonDidTap:(id)sender
{
	
	[self dismissViewControllerAnimated:YES completion:^{
		[self.delegate addMemoViewController:self add:self.textField.text];
	}];
	//说白了就是让代码玩穿越, 也就是说先执行动画,动画结束的那一瞬间执行委托方的传值操作,然而被委托方的动画也在这个传值操作里面,这样被委托方的动画也会在动画结束后才执行
}

-(void)cancelButtonDidTap:(id)sender
{
	[self dismissViewControllerAnimated:YES completion:nil];
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
