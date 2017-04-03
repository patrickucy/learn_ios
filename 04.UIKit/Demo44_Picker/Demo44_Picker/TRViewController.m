//
//  TRViewController.m
//  Demo44_Picker
//
//  Created by Patrick Yu on 7/29/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController () <UIPickerViewDelegate,UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UIPickerView *picker;
@property (strong,nonatomic) NSArray *data1;
@property (strong,nonatomic) NSArray *data2;

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
	self.data1 = @[@"samsung",@"moto",@"windows"];
	self.data2 = @[@"haha",@"hehe",@"xixi"];

}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
	if (component == 0) {
		return [self.data1 count];
	} else {
		return [self.data2 count];
	}
	
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
	if (component == 0) {
		return self.data1[row];
	} else {
		return self.data2[row];
	}
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
	NSLog(@"%ld,%ld",(long)row,(long)component);
}
@end
