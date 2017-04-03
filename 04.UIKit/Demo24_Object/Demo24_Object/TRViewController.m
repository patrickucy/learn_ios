//
//  TRViewController.m
//  Demo24_Object
//
//  Created by Patrick Yu on 6/30/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRPoint.h"

@interface TRViewController ()
@property (nonatomic,strong) TRPoint *op;
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
	
	//传值 - 基础类型
	int a = 10; // int a; a =10;
	int b = a;
	/*	内存
		1100	a	[10]
		1104	b	[10] 拷贝过来了值
	 */
	
	
	//传值 - 结构体 只不过是稍微大一点的基本类型
	CGPoint p1 = CGPointMake(10, 20);
	CGPoint p2;
	p2.x = 10;
	p2.y = 20;
	CGPoint	p3 = p2;
	p3.x = 5;
	
	/*	内存
		1106	p1	[ 10 | 20 ] 一次性创出来的
		1138	p2	[ 10 | 20 ] 这里是一个一个的传过来的
		1170	p3	[ 10 | 20 ] 不是一个一个的传过来的,他是把p2里面的所有东西直接复制粘贴过来的
		1170	p3	[ 5  | 20 ] 他就直接把p3的 x 值直接给改了,并且不会影响p2的 x 值
	 */
	
	//!!!所有等号赋值,都是变量内存里的东西
	//	传址
	TRPoint *op1 = [[TRPoint alloc]init];
	//TRPoint *op1 = 5474; 实际上这才是上面这个代码的本质面目
	op1.x = 10;
	//5474.x = 10;
	//5474 -> x = 10; // 也就是在5474的地址再通过->找到 x 的具体位置然后赋值
	op1.y = 20;
	
	
	TRPoint *op2 = [[TRPoint alloc] init];
	//TRPoint *op2 = 6288;
	op2.x = 10;
	op2.y = 20;
	
	TRPoint *op3 = [[TRPoint alloc] init];
	//TRPoint *op3 = 2690;
	op3 = op1;
	op3.x = 30;
	
	self.op = op1;
	//!!!所有等号赋值,都是变量内存里的东西,存的是什么就传什么,只不过把指针当做值传
	/*	内存
		栈空间(参数,局部变量),在作用域结束后就销毁(连续的添加)
	 
		1122	op1		[5474]
		1138	op2		[6288]
		1154	op3		[5474]
		....
		1158	self	[4576]
	 
		
		堆空间(对象) 销毁的时间取决于内存管理(随机的加)
		5474	.x	[30]
				.y	[20] // 这里是两个单独的内存区域,不是连续的
		6288	.x	[10]
				.y	[20]
		2690	.x	[]
				.y	[]
		....
		4576	.view[xxx]
				.op[5474]
	 
		不是大括号让对象销毁,而是局部变量被销毁,让对象的引用计数减小导致最后销毁
	 */
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
