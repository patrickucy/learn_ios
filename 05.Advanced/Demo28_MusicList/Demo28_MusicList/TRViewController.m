//
//  TRViewController.m
//  Demo28_MusicList
//
//  Created by Patrick Yu on 8/21/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRUtils.h"

@interface TRViewController () <AVAudioPlayerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *allTimeLabel;
@property (weak, nonatomic) IBOutlet UILabel *currentTimeLabel;
@property (weak, nonatomic) IBOutlet UISlider *mySlider;
@property (weak, nonatomic) IBOutlet UIImageView *artWorkImageView;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *buttons;
@property (strong, nonatomic) NSTimer *timer;
@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	self.app = [UIApplication sharedApplication].delegate;
	
	[self playMusic];
	
	self.timer = [NSTimer scheduledTimerWithTimeInterval:.1 target:self selector:@selector(updateUserInterface) userInfo:nil repeats:YES];
	
}

-(void)playMusic
{
	if (self.index == self.musicPaths.count) {
		self.index = 0;
	}else if(self.index == -1 && self.musicPaths.count > 0){
		self.index = (int)self.musicPaths.count - 1;
	}
	//设置标题
	NSString *musicPath = [self.musicPaths[self.index] lastPathComponent];
	NSArray *arr = [musicPath componentsSeparatedByString:@"."];
	self.title = arr[0];
	
	
	
	NSURL *url = [NSURL fileURLWithPath:self.musicPaths[self.index]];
	//上面的 url 为即将播放的 url, 正在播放的 url 为 self.app.player.url
	//凡事 NSLog 出来很像字符串的是因为 description 属性被改动了,并不是因为本身是字符串,一般都为 <NSURL:09X009021>
	NSString *willPlayPath = url.description;
	NSString *nowPlayPath = self.app.player.url.description;
	if (![nowPlayPath isEqualToString:willPlayPath]) {
		//因为你创建的是全局变量,所以你每次下一曲的时候会把原来的全局变量 release 掉,再创建新的 player
		//只有不一样的时候才创建新的播放器来播歌,如果是一样的就什么都不做
		self.app.player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
	}
	
//	//设置专辑封面图片(有 bug)
//	UIImage *artworkImage = [TRUtils getArtWorkByPath:nowPlayPath];
//	if (artworkImage) {
//		self.artWorkImageView.image = artworkImage;
//	}
	
	self.app.player.delegate = self;
	
	[self.app.player play];
	for (UIButton *button in self.buttons) {
		if (button.tag == 1) {
			[button setTitle:@"Pause" forState:UIControlStateNormal];
		}
	}
	
	self.mySlider.maximumValue = self.app.player.duration;
	self.allTimeLabel.text = [NSString stringWithFormat:@"%02d:%02d",(int)self.app.player.duration/60,(int)self.app.player.duration%60];
	
	
}

- (IBAction)buttonsTap:(UIButton *)sender
{
	switch (sender.tag) {
		case 0://rewind
		{
			self.index --;
			
			[self playMusic];
		}
			break;
			
		case 1://play
		{
			if ([self.app.player isPlaying]) {
				[self.app.player pause];
				[sender setTitle:@"Play" forState:UIControlStateNormal];
			}else {
				[self.app.player play];
				[sender setTitle:@"Pause" forState:UIControlStateNormal];
			}
		}
			break;
			
		case 2://forward
		{
			self.index ++;
			
			[self playMusic];
		}
			break;
	}
}

-(void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag
{
	self.index ++;
	
	[self playMusic];
}

-(void)updateUserInterface
{
	NSString *fileName = [self.musicPaths[self.index] lastPathComponent];
	NSArray *arr = [fileName componentsSeparatedByString:@"."];
	self.title = arr[0];
	
	self.currentTimeLabel.text = [NSString stringWithFormat:@"%02d:%02d",(int)self.app.player.currentTime/60,(int)self.app.player.currentTime%60];
	
	if (![self.mySlider isTracking]) {
		self.mySlider.value = self.app.player.currentTime;
	}
}




//有了下面三个方法就优化了拖动进度的体验
- (IBAction)mySliderTouchDown:(id)sender
{
	
}

- (IBAction)mySliderValueChanged:(UISlider *)sender
{

}

- (IBAction)mySliderTouchUpInside:(UISlider *)sender
{
	self.app.player.currentTime = sender.value;
	
	[self.app.player play];
}

-(void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
	[self.timer invalidate];//这个才是真正为什么播放器一直在播,因为这个 timer 还一直都是强指引(因为你把 player 声明了全局变量,所以这个 timer 也就没什么影响了)
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
