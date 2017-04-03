//
//  TRViewController.m
//  Demo15_Practise2
//
//  Created by Patrick Yu on 6/26/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController () <UIScrollViewDelegate>
@property (nonatomic,strong) UIPageControl *pageControl;
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
	/*
	 *	+view
	 *		+pageControl
	 *			+scrollView
	 *				+imageView
	 *				+button
	 */
	
	
	UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:self.view.frame];
	for (int i = 0; i < [self.imageNames count];i++) {
		UIImage *image = [UIImage imageNamed:self.imageNames[i]];
		UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
		
		//拿出来,改一改,放回去
		CGRect frame = imageView.frame;
		frame.size = scrollView.frame.size; // 只需要写出相对父类的大小和坐标就好了!!!
		frame.origin.x = i * frame.size.width;
		
		imageView.frame = frame;
		[scrollView addSubview:imageView];

		self.pageControl.userInteractionEnabled = NO;
		if (i == [self.imageNames count] - 1) {
			UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
			button.frame = frame;
			[button addTarget:self action:@selector(tap:) forControlEvents:UIControlEventTouchUpInside];
			//button is invisible,but you can see your console that there will be a tap message
			[scrollView addSubview:button];
			
		}

	}
	
	//拿出来,改一改,放回去
	CGSize size = scrollView.frame.size;
	size.width *= [self.imageNames count];
	scrollView.contentSize = size;
	
	scrollView.pagingEnabled = YES;
	scrollView.showsHorizontalScrollIndicator = NO;
	
	
	scrollView.delegate = self;
	
	
	[self.view addSubview:scrollView];
	//虽然你做出来了,但是代码写得太傻逼了,首先,所有跟数据有关的东西你要直接声明成 property, 第二代码里面不要出现据悉的数字,编程总要找到相对的对象来编
	UIPageControl *pageControl = [[UIPageControl alloc] init];
	self.pageControl = pageControl;
	
	//拿出来,改一改,放回去
	CGRect frame = CGRectZero;
	frame.size.height = 20;
	frame.size.width = self.view.frame.size.width;
	frame.origin.x = 0;
	frame.origin.y = self.view.frame.size.height - 20 - frame.size.height;
	pageControl.frame = frame;
	pageControl.numberOfPages = [self.imageNames count];
	pageControl.currentPage = 0;
	[self.view addSubview:pageControl];
}

-(void)tap:(id)sender
{
	NSLog(@"tap");
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
	CGPoint offset = scrollView.contentOffset;
	NSLog(@"%0.2f",offset.x);
	
	self.pageControl.currentPage = round(offset.x/320);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
