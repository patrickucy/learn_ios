//
//  TRAreaViewController.m
//  Demo20_TableView_Push
//
//  Created by Patrick Yu on 6/28/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRAreaViewController.h"

@interface TRAreaViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *populationLabel;

@end

@implementation TRAreaViewController

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
}

-(void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
	self.nameLabel.text = self.area.name;
	self.populationLabel.text = [NSString stringWithFormat:@"%d",self.area.population];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
