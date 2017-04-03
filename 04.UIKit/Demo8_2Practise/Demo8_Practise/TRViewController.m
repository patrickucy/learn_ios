//
//  TRViewController.m
//  Demo8_Practise
//
//  Created by Patrick Yu on 6/24/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()
@property (weak, nonatomic) IBOutlet UIStepper *stepper;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UISwitch *switchButton;
@property (weak, nonatomic) IBOutlet UIProgressView *progressView;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UISlider *slider2;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation TRViewController

- (IBAction)stepperValueChanged:(UIStepper *)sender
{
	self.label.text = [NSString stringWithFormat:@"%f",sender.value];
	self.progressView.progress = sender.value;
}

- (IBAction)segmentedControlValueChanged:(UISegmentedControl *)sender
{
	if(sender.selectedSegmentIndex == 0){
		self.slider.enabled = YES;
		self.slider2.enabled = NO;
	}else{
		self.slider.enabled = NO;
		self.slider2.enabled = YES;
	}
}
- (IBAction)slider2ValueChanged:(UISlider *)sender
{
	self.progressView.progress = self.slider2.value;
	self.label.text =[NSString stringWithFormat:@"%f",self.slider2.value];
}

- (IBAction)switchButtonValueChanged:(UISwitch *)sender
{
	self.slider.enabled = sender.on;
	self.slider2.enabled = sender.on;
	self.segmentedControl.enabled = sender.on;
}
- (IBAction)sliderValueChange:(id)sender
{
	NSLog(@"slider value changed %f",self.slider.value);
	self.progressView.progress = self.slider.value;
	self.label.text =[NSString stringWithFormat:@"%f",self.slider.value];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	self.slider2.minimumTrackTintColor = [UIColor redColor];
	self.slider2.maximumTrackTintColor = [UIColor redColor];
	self.slider.enabled = YES;
	self.slider2.enabled = NO;
	
	self.stepper.maximumValue = 1;
	self.stepper.minimumValue = 0;
	self.stepper.stepValue = 0.1;
	
	
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
