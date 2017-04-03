//
//  TRViewController.m
//  Demo67_FrameAndBounds
//
//  Created by Patrick Yu on 8/5/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController () <UIGestureRecognizerDelegate>
@property (strong,nonatomic) UIImageView *imageView;
@property (strong,nonatomic) UILabel *frameLabel;
@property (strong,nonatomic) UILabel *boundsLabel;

@property (strong,nonatomic) UILabel *frameOriginLabel;
@property (strong,nonatomic) UILabel *frameTopRightPointLabel;
@property (strong,nonatomic) UILabel *frameBottomLeftPointLabel;
@property (strong,nonatomic) UILabel *frameBottomRightPointLabel;

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	UIImage *image = [UIImage imageNamed:@"galaxy"];
	UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
	[self.view addSubview:imageView];
	self.imageView = imageView;

	
	//self.imageView.bounds = CGRectMake(0, 0, 120, 222);//通过直接修改 bounds 它才会改变,一般情况下都不会改变,初始化了时候无论怎么变形都不会随着图形改变
	
	UILabel *frameLabel = [[UILabel alloc] init];
	frameLabel.frame = CGRectMake(10,20, 300, 20);
	frameLabel.textColor = [UIColor blackColor];
	frameLabel.backgroundColor = [UIColor whiteColor];
	frameLabel.shadowColor = [UIColor greenColor];
	frameLabel.shadowOffset = CGSizeMake(0.5, 0.5);
	UIFont *frameFont = [UIFont systemFontOfSize:12];
	[frameLabel setFont:frameFont];
	[self.view addSubview:frameLabel];
	self.frameLabel = frameLabel;
	
	
	UILabel *boundsLabel = [[UILabel alloc] init];
	boundsLabel.frame = CGRectMake(10,40, 300, 20);
	boundsLabel.textColor = [UIColor blackColor];
	boundsLabel.backgroundColor = [UIColor whiteColor];
	boundsLabel.shadowColor = [UIColor greenColor];
	boundsLabel.shadowOffset = CGSizeMake(0.5, 0.5);
	UIFont *boundsFont = [UIFont systemFontOfSize:12];
	[boundsLabel setFont:boundsFont];
	[self.view addSubview:boundsLabel];
	self.boundsLabel = boundsLabel;
	
	
	UIFont *font = [UIFont systemFontOfSize:10];
	
	self.frameOriginLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
	[self.frameOriginLabel setFont:font];
	self.frameOriginLabel.textColor = [UIColor redColor];
	self.frameOriginLabel.text = @"FO";
	
	self.frameTopRightPointLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 25, 20)];
	[self.frameTopRightPointLabel setFont:font];
	self.frameTopRightPointLabel.textColor = [UIColor redColor];
	self.frameTopRightPointLabel.text = @"FTR";
	
	self.frameBottomLeftPointLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 25, 20)];
	[self.frameBottomLeftPointLabel setFont:font];
	self.frameBottomLeftPointLabel.textColor = [UIColor redColor];
	self.frameBottomLeftPointLabel.text = @"FBL";
	
	self.frameBottomRightPointLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 25, 20)];
	[self.frameBottomRightPointLabel setFont:font];
	self.frameBottomRightPointLabel.textColor = [UIColor redColor];
	self.frameBottomRightPointLabel.text = @"FBR";
	
	[self show];
}

-(void)show
{
	self.frameLabel.text= [NSString stringWithFormat:@"frame:x[%.1lf],y[%.1lf],w[%.1lf],h[%.1lf]",
						   self.imageView.frame.origin.x,
						   self.imageView.frame.origin.y,
						   self.imageView.frame.size.width,
						   self.imageView.frame.size.height];
	
	self.frameOriginLabel.center = self.imageView.frame.origin;
	[self.view addSubview:self.frameOriginLabel];
	
	CGPoint trPoint = CGPointZero;
	trPoint.x = self.imageView.frame.origin.x + self.imageView.frame.size.width;
	trPoint.y = self.imageView.frame.origin.y;
	self.frameTopRightPointLabel.center = trPoint;
	[self.view addSubview:self.frameTopRightPointLabel];
	
	CGPoint blPoint = CGPointZero;
	blPoint.x = self.imageView.frame.origin.x;
	blPoint.y = self.imageView.frame.origin.y + self.imageView.frame.size.height;
	self.frameBottomLeftPointLabel.center = blPoint;
	[self.view addSubview:self.frameBottomLeftPointLabel];
	
	CGPoint brPoint = CGPointZero;
	brPoint.x = self.imageView.frame.origin.x + self.imageView.frame.size.width;
	brPoint.y = self.imageView.frame.origin.y + self.imageView.frame.size.height;
	self.frameBottomRightPointLabel.center = brPoint;
	[self.view addSubview:self.frameBottomRightPointLabel];
	
	
	
	self.boundsLabel.text = [NSString stringWithFormat:@"bounds:x[%.1lf],y[%.1lf],w[%.1lf],h[%.1lf]",
							 self.imageView.bounds.origin.x,
							 self.imageView.bounds.origin.y,
							 self.imageView.bounds.size.width,
							 self.imageView.bounds.size.height];
}


- (IBAction)tap:(UITapGestureRecognizer *)sender
{
//	self.imageView.transform = CGAffineTransformIdentity;
	//self.imageView.frame = CGRectMake(0, 0, 120, 222);
	//self.imageView.bounds = CGRectMake(0, 0, 120, 222);//通过直接修改 bounds 它才会改变,一般情况下都不会改变,初始化了时候无论怎么变形都不会随着图形改变
	
	CGPoint point = [sender locationInView:self.imageView];//!!!注意这里的取 view 的不同就会有不同的效果
	NSLog(@"%@",[NSString stringWithFormat:@"once tap: %.2lf,%.2lf",point.x,point.y]);
	UILabel *start = [[UILabel alloc] init];
	start.text = @"*";
	start.textColor = [UIColor greenColor];
	start.font = [UIFont systemFontOfSize:25];
	start.frame = CGRectMake(0, 0, 20,20);
	start.center = point;
	[self.imageView addSubview:start];//!!!注意这里的取 view 的不同就会有不同的效果
	//你想把 subview 放进那个 view 里面你就取哪个 view 的坐标
	
	[self show];
}
- (IBAction)tapTwice:(UITapGestureRecognizer *)sender
{
	CGPoint currentPoint = [sender locationInView:self.imageView];
	NSLog(@"twice tap:x:%lf,y:%lf",currentPoint.x,currentPoint.y);
}

- (IBAction)pinch:(UIPinchGestureRecognizer *)sender
{
	self.imageView.transform = CGAffineTransformScale(self.imageView.transform, sender.scale, sender.scale);
	sender.scale = 1;
	[self show];
}

- (IBAction)rotate:(UIRotationGestureRecognizer *)sender
{
	self.imageView.transform = CGAffineTransformRotate(self.imageView.transform, sender.rotation);
	sender.rotation = 0;
	[self show];
}

- (IBAction)pan:(UIPanGestureRecognizer *)sender
{
	CGPoint currentLoation = [sender translationInView:self.view];//这里特别注意,你得到的坐标是在这个 view 当中的点
	CGPoint centerPoint = self.imageView.center;
	centerPoint.x += currentLoation.x;
	centerPoint.y += currentLoation.y;
	self.imageView.center = centerPoint;
	[sender setTranslation:CGPointZero inView:self.view];
	[self show];
}


-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
	if ([gestureRecognizer isKindOfClass:[UIPanGestureRecognizer class]] && [otherGestureRecognizer isKindOfClass:[UISwipeGestureRecognizer class]]) {
		return NO;
	}
	return YES;
}

//iOS7的新功能
-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRequireFailureOfGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer//这个方法的意思是当某个 gesture 执行时,另外一个 gesture 应该为失败-即不执行
{
	//return YES;
	// 这样的一个方法就可以避免你点两下的时候,他还会额外的执行两个点一下这样子的误解
	// 如果你直接这样子返回 yes 那所有的 gestureRecognizer 都是独立的被执行,而不会同时执行了
	// 所有你要判断当 tapOnce 和 tapTwice 的时候才 return yes 就可以实现了
	if ([gestureRecognizer isKindOfClass:[UITapGestureRecognizer class]]) {
		return YES;
	}
	return NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
