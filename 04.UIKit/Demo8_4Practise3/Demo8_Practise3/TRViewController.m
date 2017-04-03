//
//  TRViewController.m
//  Demo8_Practise3
//
//  Created by Patrick Yu on 6/24/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()
@property (weak, nonatomic) IBOutlet UILabel *palette;
@property (weak, nonatomic) IBOutlet UILabel *palette2;
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;
@property (weak, nonatomic) IBOutlet UISlider *alphaSlider;
@property (strong,nonatomic) UIColor *backgroundColor;
@property (nonatomic) CGFloat red;
@property (nonatomic) CGFloat blue;
@property (nonatomic) CGFloat green;
@property (nonatomic) CGFloat alpha;


@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	self.redSlider.minimumTrackTintColor = [UIColor redColor];
	self.greenSlider.minimumTrackTintColor = [UIColor greenColor];
	self.blueSlider.minimumTrackTintColor = [UIColor blueColor];
	self.alphaSlider.minimumTrackTintColor = [UIColor purpleColor];
}
- (IBAction)redSliderValueChanged:(UISlider *)sender
{
	self.palette.backgroundColor = sender.minimumTrackTintColor;
	self.palette.alpha = sender.value;
	self.palette2.backgroundColor = [UIColor colorWithRed:self.red green:self.green blue:self.blue alpha:self.alpha];
	self.red = sender.value;
}

- (IBAction)greenColorSliderValueChanged:(UISlider *)sender
{
	self.palette.backgroundColor = sender.minimumTrackTintColor;
	self.palette.alpha = sender.value;
	self.palette2.backgroundColor = [UIColor colorWithRed:self.red green:self.green blue:self.blue alpha:self.alpha];
	self.green = sender.value;
}

- (IBAction)blueSliderValueChanged:(UISlider *)sender
{
	self.palette.backgroundColor = sender.minimumTrackTintColor;
	self.palette.alpha = sender.value;
	self.palette2.backgroundColor = [UIColor colorWithRed:self.red green:self.green blue:self.blue alpha:self.alpha];
	self.blue = sender.value;
}

- (IBAction)alphaSliderValueChanged:(UISlider *)sender
{
	self.palette.backgroundColor = sender.minimumTrackTintColor;
	self.palette.alpha = sender.value;
	self.palette2.backgroundColor = [UIColor colorWithRed:self.red green:self.green blue:self.blue alpha:self.alpha];
	self.alpha = sender.value;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
