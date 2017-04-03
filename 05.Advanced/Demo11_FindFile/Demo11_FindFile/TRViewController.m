//
//  TRViewController.m
//  Demo11_FindFile
//
//  Created by Patrick Yu on 8/12/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()
@property (weak, nonatomic) IBOutlet UITextField *myTextField;
@property (weak, nonatomic) IBOutlet UISwitch *mySwitch;
@property (weak, nonatomic) IBOutlet UITextView *myTextView;

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	//NSRange 是一个结构体,一个是 location ,一个是 length
	
	/*
	 //判断如何包含字符串
	NSString *string = @"abcdefg";
	NSString *subString = @"fg";
	NSRange range = [string rangeOfString:subString];
	NSLog(@"%d %d",range.location,range.length);
	if ([string rangeOfString:subString].length > 0) {
		NSLog(@"包含了");
	}
	 */
	
}
- (IBAction)searchButtonTouchUpInside:(UIButton *)sender
{
	[self.myTextField resignFirstResponder];
	self.myTextView.text = @""; //先清空一下上次留下的记录

	[self findFileByName:self.myTextField.text inDirectoryPath:@"/Users/patrickyu/Desktop/"];
}

-(void)findFileByName:(NSString *)findFileName inDirectoryPath:(NSString *)path
{
	NSFileManager *fm = [NSFileManager defaultManager];
	NSArray *fileNames = [fm contentsOfDirectoryAtPath:path error:nil];
	for (NSString *fileName in fileNames) {
		NSString *filePath = [path stringByAppendingPathComponent:fileName];
		BOOL isDirectory;
		//判断文件夹下面的文件是否是文件夹
		if ([fm fileExistsAtPath:filePath isDirectory:&isDirectory] && isDirectory ) {
			//如果是文件夹,再做一遍遍历文件夹的事,就是再调用一下方法本身
			[self findFileByName:findFileName inDirectoryPath:filePath];
		}else{
			if (self.mySwitch.isOn) {//模糊查找
				
				//查找是否包含
				if ([fileName rangeOfString:findFileName].length > 0) {
					NSLog(@"找到了!在这个位置%@",filePath);
					self.myTextView.text = [NSString stringWithFormat:@"%@\n%@",self.myTextView.text,filePath];
				}
			} else {//精确查找
				if ([fileName isEqualToString:findFileName]) {
					NSLog(@"找到了!在这个位置%@",filePath);
					self.myTextView.text = [NSString stringWithFormat:@"%@\n%@",self.myTextView.text,filePath];
				}
			
			}
		}
		
	}
}



@end
