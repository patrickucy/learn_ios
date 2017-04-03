//
//  TRViewController.m
//  Demo16_UIScollerView_More
//
//  Created by Patrick Yu on 6/27/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController () <UIScrollViewDelegate>
@property (nonatomic,strong) UIImageView *imageView;
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
	UIImage *image = [UIImage imageNamed:@"earth.jpg"];
	self.imageView = [[UIImageView alloc]initWithImage:image];
	
	UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
	[scrollView addSubview:self.imageView];
	
	scrollView.contentSize = self.imageView.frame.size;
	
	CGFloat horizontalScale = self.view.frame.size.width / self.imageView.frame.size.width;
	CGFloat	verticalScale = self.view.frame.size.height / self.imageView.frame.size.height;
	
	scrollView.minimumZoomScale = MAX(horizontalScale, verticalScale);
	scrollView.maximumZoomScale = 2.0;
	
	scrollView.delegate = self;
	//scrollView.showsHorizontalScrollIndicator = NO;
	//scrollView.showsVerticalScrollIndicator = NO;
		
	//这个所谓的透明bar 的这个问题在 ios7.1内置已经解决了
	//scrollView.contentInset = UIEdgeInsetsMake(0, 0, 0, 0);
	
	[self.view addSubview:scrollView];
}

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
	return self.imageView;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
