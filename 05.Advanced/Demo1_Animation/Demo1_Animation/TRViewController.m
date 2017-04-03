//
//  TRViewController.m
//  Demo1_Animation
//
//  Created by Patrick Yu on 8/9/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"



@interface TRViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *zombieImageView;
@property (weak, nonatomic) IBOutlet UIImageView *plantImageView;
@property (nonatomic) int runCount;
@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	//把整张图片加载进来
	UIImage *image = [UIImage imageNamed:@"zomb_0"];//你也可以直接加载一个文件的路径,直接拖拽就可以自动出现路径了
	
	//截取图片中的某一个部分
	//UIIamge -> CGImageRef   =  image.CGImage
	CGImageRef subImage = CGImageCreateWithImageInRect(image.CGImage, CGRectMake(0, 0, image.size.width/8 * 2, image.size.height * 2));
	//你这里涉及到一个素材不够分辨率的问题,所有你要把所有的素材都要宽高要各放大2倍,一共4倍
	
	//CGImageRef -> UIIamge
	self.zombieImageView.image = [UIImage imageWithCGImage:subImage];
	
	//把 CGImageRef 干掉
	CGImageRelease(subImage);
	
	//NSTimer
	//每隔一段时间就会调用这个方法,具体的时间间隔下面定义,秒为单位
	[NSTimer scheduledTimerWithTimeInterval:.2
									 target:self
								   selector:@selector(changeImageAction:)
								   userInfo:image
									repeats:YES];
	
	UIImage *plantImage = [UIImage imageNamed:@"plant_0"];
	CGImageRef plantSubImage = CGImageCreateWithImageInRect(plantImage.CGImage, CGRectMake(0, 0, plantImage.size.width/8 * 2, plantImage.size.height * 2));
	self.plantImageView.image = [UIImage imageWithCGImage:plantSubImage];
	CGImageRelease(plantSubImage);
	[NSTimer scheduledTimerWithTimeInterval:.2
									 target:self
								   selector:@selector(plantImageAction:)
								   userInfo:plantImage
									repeats:YES];
	
}

-(void)changeImageAction:(NSTimer *)timer
{
	self.zombieImageView.center = CGPointMake(self.zombieImageView.center.x - 2 , self.zombieImageView.center.y);
	//向左移动
	UIImage *image = timer.userInfo;
	NSLog(@"changeImageAction");
	CGImageRef  subImage = CGImageCreateWithImageInRect(image.CGImage, CGRectMake(self.runCount ++ %8 *image.size.width/8 *2, 0, image.size.width/8 *2, image.size.height *2));
	self.zombieImageView.image = [UIImage imageWithCGImage:subImage];
	CGImageRelease(subImage);
	
}

-(void)plantImageAction:(NSTimer *)timer
{
	UIImage *plantImage = timer.userInfo;
	CGImageRef subImage = CGImageCreateWithImageInRect(plantImage.CGImage, CGRectMake(self.runCount++%8*plantImage.size.width/8*2, 0, plantImage.size.width/8*2, plantImage.size.height*2));
	self.plantImageView.image = [UIImage imageWithCGImage:subImage];
	CGImageRelease(subImage);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
