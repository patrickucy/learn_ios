//
//  TRViewController.m
//  Demo33_GetSystemPic
//
//  Created by Patrick Yu on 8/26/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()<UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIView *editView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (strong,nonatomic) UIImageView *dragView;
@property (nonatomic,strong) UIImageView *bgIV;
@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
}
- (IBAction)getImageAction:(UIButton *)sender
{
	UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
	[self presentViewController:imagePickerController animated:YES completion:nil];
}

- (IBAction)createImageAction:(UIButton *)sender
{
	//创建一个画布,用的机会不太多
	UIGraphicsBeginImageContext(self.editView.frame.size);
	[self.editView.layer renderInContext:UIGraphicsGetCurrentContext()];
	UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
	//把获取到的image保存到相册当中
	UIImageWriteToSavedPhotosAlbum(image, self, @selector(image:didFinishSavingWithError:contextInfo:), @"hahaha");
	//操作画布完成
	UIGraphicsEndImageContext();
}

-(void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo
{
	NSLog(@"保存成功!! %@",contextInfo);
}

-(void)loadImage
{
	for (int i = 0; i < self.images.count; i++) {
		UIImage *image = self.images[i];
		UIImageView *iv = [[UIImageView alloc] initWithFrame:CGRectMake(80*i, 0, 70, 70)];
		iv.image = image;
		[self.scrollView addSubview:iv];
		
		iv.userInteractionEnabled = YES;
		
		UILongPressGestureRecognizer *longP = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longAction:)];
		[iv addGestureRecognizer:longP];
	}
	[self.scrollView setContentSize:CGSizeMake(70*self.images.count, 0)];
}

-(void)addGesture
{
	self.dragView.userInteractionEnabled = YES;
	UIPanGestureRecognizer *panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panAction:)];
	[self.dragView addGestureRecognizer:panGestureRecognizer];
	
	UIRotationGestureRecognizer *rotationGestureRecognizer = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(rotationAction:)];
	[self.dragView addGestureRecognizer:rotationGestureRecognizer];
	
	UIPinchGestureRecognizer *pinchGestureRecognizer = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(pinchAction:)];
	[self.dragView addGestureRecognizer:pinchGestureRecognizer];
	
	UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)];
	[self.dragView addGestureRecognizer:tapGestureRecognizer];
}


-(void)tapAction:(UITapGestureRecognizer *)tap
{
	//把一个 view 的subvie 放到最前面显示
	[self.editView bringSubviewToFront:tap.view];
}

-(void)panAction:(UIPanGestureRecognizer *)pan
{
	UIView *view = pan.view;
	CGPoint p = [pan locationInView:self.editView];
	view.center = p;
}

-(void)pinchAction:(UIPinchGestureRecognizer *)pinch
{
	UIView *view = pinch.view;
	[view setTransform:CGAffineTransformScale(view.transform, pinch.scale, pinch.scale)];
	//如果是 transformMakeScale 就是不管原来的大小是多少直接变成 scale 的大小, 而 transformScale 则在原来的基础上改变 scale
	pinch.scale = 1;
}

-(void)rotationAction:(UIRotationGestureRecognizer *)rotation
{
	UIView *view = rotation.view;
	[view setTransform:CGAffineTransformRotate(view.transform, rotation.rotation)];
	rotation.rotation = 0;
}

-(void)longAction:(UILongPressGestureRecognizer *)longP
{
	UIImageView *clickedImage = (UIImageView *)longP.view;
	CGPoint p = [longP locationInView:self.view];
	
	switch ((int)longP.state) {
		case UIGestureRecognizerStateBegan:
		{
			self.dragView = [[UIImageView alloc] initWithFrame:clickedImage.frame];
			self.dragView.image = clickedImage.image;
			CGPoint center = clickedImage.center;
			CGPoint newCenter = [self.scrollView convertPoint:center toView:self.view];
			self.dragView.center = newCenter;
			[self.view addSubview:self.dragView];
		}
			break;
			
		case UIGestureRecognizerStateChanged:
			self.dragView.center = p;
			break;
			
		case UIGestureRecognizerStateEnded:
		{
			if (self.dragView) {
				if (CGRectContainsPoint(self.editView.frame, p)) {
					[self.editView addSubview:self.dragView];
					CGPoint newCenter = [self.view convertPoint:self.dragView.center toView:self.editView];
					self.dragView.center = newCenter;
					[self addGesture];
				}else if(CGRectContainsPoint(self.backgroundImageView.frame, p)){
					if (!self.bgIV) {
						self.bgIV = [[UIImageView alloc] initWithFrame:self.editView.bounds];
						[self.editView insertSubview:self.bgIV atIndex:0];
					}
					self.backgroundImageView.image = self.dragView.image;
					self.bgIV.image = self.dragView.image;
					[self.dragView removeFromSuperview];
					
				}else{
					[self.dragView removeFromSuperview];
				}
			}
		}
			break;
	}
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
	[self dismissViewControllerAnimated:YES completion:nil];
}

-(void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
	
}

-(void)doneAction
{
	[self loadImage];
	[self dismissViewControllerAnimated:YES completion:nil];
}

-(void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
	
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
	NSLog(@"%@",info);
	UIImage *image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
	UIImageView *iv = [[UIImageView alloc] initWithFrame:CGRectMake(80*self.images.count, 0, 80, 80)];
	iv.image = image;
	[self.scrollView addSubview:iv];
	
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
