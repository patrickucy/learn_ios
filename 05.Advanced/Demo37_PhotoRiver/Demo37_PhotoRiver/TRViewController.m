//
//  TRViewController.m
//  Demo37_PhotoRiver
//
//  Created by Patrick Yu on 8/27/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRPhoto.h"
#import "TRUtils.h"


@interface TRViewController ()
@property (nonatomic)int index;
@property (nonatomic,strong) NSArray *imagePaths;
@property (nonatomic,strong) NSMutableArray *photos;
@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	self.photos = [NSMutableArray array];
	self.imagePaths = [TRUtils getImagePathsByPath:@"/Users/patrickyu/Developer/Tarena iOS/00.Resources/pictures/girls"];
	
	for (int i = 0; i<9; i++) {
		TRPhoto *photo = [[TRPhoto alloc] init];
		UIImage *image = [UIImage imageWithContentsOfFile:self.imagePaths[i]];
		photo.delegate = self;
		photo.imageView.image = image;
		self.index = i;
		[self.view addSubview:photo];
		[self.photos addObject:photo];
		
	}
}

-(void)changeImageForPhoto:(TRPhoto *)photo
{
	if (self.index == self.imagePaths.count) {
		self.index = 0;
	}
	UIImage *image = [UIImage imageWithContentsOfFile:self.imagePaths[self.index++]];
	photo.imageView.image = image;
}
- (IBAction)tapAction:(UITapGestureRecognizer *)sender
{
	//判断如果图片都在流动,我就集合
	TRPhoto *p = self.photos[0];
	[UIView animateWithDuration:.5 animations:^{
		
		if (p.frame.origin.x ==0) {//通过判断出图片为零的横坐标,那么就证明都集合了
			
			for (int i = 0; i<9; i++) {
				TRPhoto *p = self.photos[i];
				p.speed = p.oldAlpha * 4;
				p.alpha = p.oldAlpha;
				p.frame = p.oldFrame;
				
				
				//让内容填充整个边框
				p.drawView.frame = p.bounds;
				p.imageView.frame = p.bounds;
				p.userInteractionEnabled = YES;
			}
			
		}else {//图片都在流动
			
			for (int i = 0; i<9; i++) {
				TRPhoto *p = self.photos[i];
				p.speed = 0;
				p.oldAlpha = p.alpha;
				p.oldFrame = p.frame;
				
				p.alpha = 1;
				p.frame = CGRectMake(i%3*self.view.bounds.size.width/3, i/3*self.view.bounds.size.height/3, self.view.bounds.size.width/3, self.view.bounds.size.height/3);
				p.userInteractionEnabled = NO;
				//让内容填充整个边框
				p.drawView.frame = p.bounds;
				p.imageView.frame = p.bounds;
			}
			
		}

	}];
		
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
