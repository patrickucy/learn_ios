//
//  TRViewController.m
//  Demo36_CollectionView
//
//  Created by Patrick Yu on 7/29/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRCell.h"

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
    // Do any additional setup after loading the view from its nib.
	UINib *cellNib = [UINib nibWithNibName:@"TRCell" bundle:nil];
	[self.collectionView registerNib:cellNib forCellWithReuseIdentifier:@"Cell"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
	return 10;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
	return 10;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
	TRCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
	NSInteger number = indexPath.section * 10 + indexPath.row + 1;
	cell.label.text = [NSString stringWithFormat:@"%ld",(long)number];
	cell.label.backgroundColor = [UIColor colorWithRed:1.0 green:0 blue:0 alpha:indexPath.row /10.0];
	return cell;
}

@end
