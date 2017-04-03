//
//  TRViewController.m
//  Demo21_Face
//
//  Created by Patrick Yu on 8/16/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *myScrollView;
@property (weak, nonatomic) IBOutlet UITextField *myTextField;

@property (nonatomic,strong) NSMutableArray *faceNames;
@end

@implementation TRViewController
- (IBAction)bigViewTaped:(UIControl *)sender
{
	[self.myTextField resignFirstResponder];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	// Do any additional setup after loading the view, typically from a nib.
	self.faceNames = [[NSMutableArray alloc] init];
	
	
	
	NSString *faceNamesPath = [[NSBundle mainBundle] pathForResource:@"emotion" ofType:@"plist"];
	NSDictionary *emotions = [NSDictionary dictionaryWithContentsOfFile:faceNamesPath];
	
	NSString *faceImagesPath = [[NSBundle mainBundle] pathForResource:@"emotionImage" ofType:@"plist"];
	NSDictionary *emotionImages = [NSDictionary dictionaryWithContentsOfFile:faceImagesPath];

	
	for (int i = 1 ; i <= emotions.count; i++) {
		[self.faceNames addObject:[emotions objectForKey:[NSString stringWithFormat:@"%d",i]]];
	}
	
	for (int i = 0 ; i < emotions.count; i++) {
		NSString *faceName = self.faceNames[i];
		
		UIImage *image = [UIImage imageNamed:[emotionImages objectForKey:faceName]];
		UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
		imageView.tag = i;
		imageView.frame = CGRectMake(i % 6 * 320/6,i / 6 * 320/6, 320/6, 320/6);//这里唯一的解释就似乎 i/6一定是一个 int 值,也就是说 int/6是个 int 值, int/6才是一个 float 值
		
		[self.myScrollView addSubview:imageView];
		UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapedImage:)];
		imageView.userInteractionEnabled = YES;
		[imageView addGestureRecognizer:tapGestureRecognizer];
	}
	int row = emotions.count % 6 == 0 ? emotions.count/6 : emotions.count/6 + 1;
	self.myScrollView.contentSize = CGSizeMake(320, row * 320 /6);
	
}

-(void)tapedImage:(UITapGestureRecognizer *)tapGestureRecognizer
{
	UIImageView *imageView = (UIImageView *)tapGestureRecognizer.view;
	NSString *faceName = self.faceNames[imageView.tag];
	self.myTextField.text = [self.myTextField.text stringByAppendingString:faceName];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
