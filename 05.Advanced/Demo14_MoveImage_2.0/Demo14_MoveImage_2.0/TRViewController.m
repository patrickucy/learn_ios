//
//  TRViewController.m
//  Demo13_MoveImage
//
//  Created by Patrick Yu on 8/13/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRUtils.h"

@interface TRViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *myScrollView;
@property (nonatomic,strong) NSMutableArray *images;
@property (nonatomic) int from;
@property (nonatomic) int to;
@property (nonatomic,strong) UIImageView *dragView;
@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	self.to = -1;
	self.images = [NSMutableArray array];

	
	NSMutableArray *imagePaths = [TRUtils getImagePathsByPath:@"/Users/patrickyu/Developer/Tarena iOS/00.Resources/pictures/girls"];
	
	//把路径数组改成 image 数组
	for (NSString *imagePath in imagePaths) {
		UIImage *image = [UIImage imageWithContentsOfFile:imagePath];
		[self.images addObject:image];
	}
	[self loadImageView];
	
	NSLog(@"%d-------%d",self.images.count,self.myScrollView.subviews.count);
}


-(void)changeLocation
{
	
	UIImage *image = [self.images objectAtIndex:self.from];
	[self.images removeObjectAtIndex:self.from];
	[self.images insertObject:image atIndex:self.to];
//	移动玩之后 from = to
	self.from = self.to;
	//刷新界面
	[self loadImageView];
}

-(void)loadImageView
{
	//把原来的图片都删掉
	for (UIImageView *subView in self.myScrollView.subviews) {
		[subView removeFromSuperview]; //虽然实际上错操作的是子类,但是还是可以把它当做父类来调用
		
	}
	
	//重新加载
	for (int i = 0; i <  self.images.count; i++) {
		UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(2+i%4*80, 2 + i/4*80, 75, 75)];
//		通过 tag值来确定 view 的唯一性,方便在 model 层来调用
		imageView.tag = i;
		imageView.image = self.images[i];
		[self.myScrollView addSubview:imageView];
		if (i == self.to) {
			imageView.hidden = YES;
		}
	}
	int row = self.images.count % 4 == 0 ? self.images.count /4 :self.images.count/4 +1;
	[self.myScrollView setContentSize:CGSizeMake(0, row * 80+5)];
}
- (IBAction)longAction:(UILongPressGestureRecognizer *)sender
{
	CGPoint currentPoint = [sender locationInView:self.view];

//	scrollView滚动上去的值
	CGPoint newtPoint = CGPointMake(currentPoint.x, currentPoint.y + self.myScrollView.contentOffset.y);

	//	手势的状态
	switch (sender.state) {
		case UIGestureRecognizerStateBegan:
		{
////			找到开始时点击的图片
			for (UIImageView *imageView in self.myScrollView.subviews) {
				
				//		这里会遇到一个问题就是,如果 scrollView 是有滚动条的,在滚动条出现会,会在 subview 里面多出两个 subview 分别就是那两个滚动条
				if (CGRectContainsPoint(imageView.frame, newtPoint)) {
					NSLog(@"%d",imageView.tag);
					self.dragView = [[UIImageView alloc] initWithFrame:CGRectMake(imageView.frame.origin.x, imageView.frame.origin.y - self.myScrollView.contentOffset.y, imageView.frame.size.width, imageView.frame.size.height)];
					self.dragView.image = imageView.image;
					imageView.hidden = YES;
					
					
					// scrollview 是会在加载前subviews 全部被删掉过,所以你要注意这个细节
					[self.view addSubview:self.dragView];
					NSLog(@"开始点击% d",imageView.tag);
					self.from = imageView.tag;
				}
				
			}
		}
			break;
			
	
		case UIGestureRecognizerStateChanged:
		{
			if (self.dragView) {
				self.dragView.center = currentPoint;
			}
//			找到移动时点击的图片
			for (UIImageView *imageView in self.myScrollView.subviews) {
				//这里会遇到一个问题就是,如果 scrollView 是有滚动条的,在滚动条出现会,会在 subview 里面多出两个 subview 分别就是那两个滚动条
				if (CGRectContainsPoint(imageView.frame, newtPoint)) {
					NSLog(@"%d",imageView.tag);
					
					self.to = imageView.tag;
					if (self.from != self.to && self.from != -1 && self.to !=-1) {
						[self changeLocation];
					}
					
				}
				
			}
		}
			break;
			
		
		case UIGestureRecognizerStateEnded:
		{
//			你会发现松手了依然还会存在在屏幕上
			if (self.dragView) {
//				从这里你就知道了,如果你想删除一个在屏幕上的 view 对象你不能通过 set nil 的方法来删除,你只能通过 remove...的 API 来删除
				[self.dragView removeFromSuperview];
				UIView *imageView = [self.myScrollView viewWithTag:self.to];
				imageView.hidden = NO;
			}
			
			
		}
			break;
		
	}
}
// 0  1  2  3
// 4  5  6  7
// 8  9  10 11

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
