//
//  TRViewController.m
//  Demo3_PlantsVSZombies
//
//  Created by Patrick Yu on 8/10/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRPlant.h"
#import "TRSunFlower.h"
#import "TRPea.h"
#import "TRIcePea.h"
#import "TRNut.h"
#import "TRZombie.h"
#import "TRZombieA.h"
#import "TRZombieB.h"
#import "TRZombieC.h"

@interface TRViewController ()
@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *plants;
//连的顺序取决于数组顺序
@property (strong,nonatomic) TRPlant *dragPlant;
@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	[self initUserInterface];
	
	//测试
	/*
	TRSunFlower *sunFlower = [[TRSunFlower alloc] initWithFrame:CGRectMake(50, 100, 40, 70)];
	[self.view addSubview:sunFlower];
	TRPea *pea = [[TRPea alloc] initWithFrame:CGRectMake(100, 100, 40, 70)];
	[self.view addSubview:pea];
	TRIcePea *icePea = [[TRIcePea alloc] initWithFrame:CGRectMake(150, 100, 40, 70)];
	[self.view addSubview:icePea];
	TRNut *nut = [[TRNut alloc] initWithFrame:CGRectMake(200, 100, 40, 70)];
	[self.view addSubview:nut];
	 */
	
	
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	UITouch *touch = [touches anyObject];
	CGPoint currentPoint = [touch locationInView:self.view];
	for (UIImageView *plantImageView in self.plants) {
		if (CGRectContainsPoint(plantImageView.frame, currentPoint)) {
			
			switch (plantImageView.tag) {
				case 0:
				{
					TRSunFlower *sunFlower = [[TRSunFlower alloc] initWithFrame:CGRectMake(currentPoint.x - 40/2, currentPoint.y - 50/2, 40, 50)];
					self.dragPlant = sunFlower;
				}
					break;
				case 1:
				{
					TRPea *pea = [[TRPea alloc] initWithFrame:CGRectMake(currentPoint.x - 40/2, currentPoint.y - 50/2, 40, 50)];
					self.dragPlant = pea;
				}
					break;
				case 2:
				{
					TRIcePea *icePea = [[TRIcePea alloc] initWithFrame:CGRectMake(currentPoint.x - 40/2, currentPoint.y - 50/2, 40, 50)];
					self.dragPlant = icePea;
				}
					break;
				case 3:
				{
					TRNut *nut = [[TRNut alloc] initWithFrame:CGRectMake(currentPoint.x - 40/2, currentPoint.y - 50/2, 40, 50)];
					self.dragPlant = nut;
				}
					break;
				default:
					break;
			}
			[self.view addSubview:self.dragPlant];
		}
	}
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
	UITouch *touch = [touches anyObject];
	CGPoint currentPoint = [touch locationInView:self.view];
	
	self.dragPlant.center = currentPoint;
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
	UITouch *touch = [touches anyObject];
	CGPoint currentPoint = [touch locationInView:self.view];
	//遍历每一个 box 判断在哪个 box 上面松手的
	for (UIView *box in self.boxes) {
		if (CGRectContainsPoint(box.frame, currentPoint)) {
			//判断如果 box 里面没有植物才添加
			if ([box.subviews count] == 0) {
				self.dragPlant.center = CGPointMake(box.frame.size.width/2, box.frame.size.height/2);
				[box addSubview:self.dragPlant];
				self.dragPlant = nil; //扔完之后,就不要指向对象了,因为 touchesMoved 的方法里面还是会改变对象的中心点
			}
		}
	}
	//判断如果植物没有扔到任何一个 box 里面的话,删掉此植物,一定要等它全部遍历完了再删掉
	//考虑发生改变的因素, 如果扔进去了它属于 box 的孩子,如果没扔属于 self.view 的孩子
	if ([self.dragPlant.superview isEqual:self.view]) { //isKindOf 是类型,不是相等判断
		[self.dragPlant removeFromSuperview];
	}
}

-(void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
	//通知中心,打电话等等的突然出现都会调用这个方法
	[self.dragPlant removeFromSuperview];
}

-(void)initUserInterface
{
	UIImage *plantImages = [UIImage imageNamed:@"seedpackets"];
	for (int i = 0; i < 4; i++) {
		UIImageView *plantView = self.plants[i];
		float x = 0;
		switch (i) {
			case 1:
				x = 2*plantImages.size.width/18 *2;
				break;
				
			case 2:
				x = 3*plantImages.size.width/18 *2;

				break;
				
			case 3:
				x = 5*plantImages.size.width/18 *2;

				break;
				
			default:
				break;
		}
		CGImageRef subImage = CGImageCreateWithImageInRect(plantImages.CGImage, CGRectMake(x, 0, plantImages.size.width / 18 * 2, plantImages.size.height *2));
		plantView.image = [UIImage imageWithCGImage:subImage];
	}
}




@end
