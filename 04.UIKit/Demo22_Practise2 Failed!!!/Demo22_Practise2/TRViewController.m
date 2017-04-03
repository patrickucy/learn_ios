//
//  TRViewController.m
//  Demo22_Practise2
//
//  Created by Patrick Yu on 6/30/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController () <UIScrollViewDelegate>
@property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic) NSInteger currentPage;
@end

@implementation TRViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
		UIImage *image1 = [UIImage imageNamed:@"beach.jpg"];
		UIImage *image2 = [UIImage imageNamed:@"earth.jpg"];
		UIImage *image3 = [UIImage imageNamed:@"galaxy.jpg"];
		UIImage *image4 = [UIImage imageNamed:@"grass.jpg"];
		UIImage *image5 = [UIImage imageNamed:@"wave.jpg"];

		self.images = [[NSMutableArray alloc]initWithObjects:image1,image2,image3,image4,image5, nil];
		self.imageViews = [[NSMutableArray alloc] init];
		
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
	
	UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame: self.view.frame];
	scrollView.contentSize = CGSizeMake(scrollView.frame.size.width * [self.images count], scrollView.frame.size.height);
	scrollView.pagingEnabled = YES;
	
	for (int i = 0; i < [self.images count]; i++) {
		UIImage *image = self.images[i];
		UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
		if (i == 0) {
			imageView.frame = scrollView.frame;
		}
		
		imageView.frame = CGRectMake(scrollView.frame.size.width * i, scrollView.frame.origin.y, scrollView.frame.size.width, scrollView.frame.size.height);
		
		[scrollView addSubview:imageView];
		[self.imageViews addObject:imageView];
	}

	CGFloat horizontalScale = self.view.frame.size.width / self.imageView.frame.size.width;
	CGFloat	verticalScale = self.view.frame.size.height / self.imageView.frame.size.height;
	
	scrollView.minimumZoomScale = MAX(horizontalScale, verticalScale);
	scrollView.maximumZoomScale = 2.0;
	
	scrollView.delegate = self;

	[self.view addSubview:scrollView];
	 
}

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
	
	return self.imageView;
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
	CGPoint offset = scrollView.contentOffset;
	NSLog(@"offset point:%f",offset.x);
	self.currentPage = round(offset.x/320);
	self.imageView = self.imageViews[self.currentPage];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
