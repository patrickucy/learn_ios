//
//  TRMusic.m
//  Demo35_TMusic_Practise
//
//  Created by Patrick Yu on 7/3/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRMusic.h"

@implementation TRMusic
+(NSArray *)demoData
{
	TRMusic *music = nil;
	
	NSMutableArray *musics = [NSMutableArray array];
	
	music = [[TRMusic alloc] init];
	music.name			=	@"Burn";
	music.album			=	@"Burn - Single";
	music.artist		=	@"Ellie Goulding";
	music.duration		=	[self durationWithMinutes:3 andSeconds:51];
	music.downloaded	=	YES;
	music.highQuality	=	NO;
	[musics addObject:music];
	
	music = [[TRMusic alloc] init];
	music.name			=	@"Summertime Sadness(Cedric Gervais Remix)";
	music.album			=	@"Summertime Sadness(Cedric Gervais Remix) - Single";
	music.artist		=	@"Lana Del Rey";
	music.duration		=	[self durationWithMinutes:3 andSeconds:32];
	music.downloaded	=	YES;
	music.highQuality	=	YES;
	[musics addObject:music];
	
	music = [[TRMusic alloc] init];
	music.name			=	@"Spectrum";
	music.album			=	@"Clarity";
	music.artist		=	@"Zedd";
	music.duration		=	[self durationWithMinutes:3 andSeconds:12];
	music.downloaded	=	YES;
	music.highQuality	=	YES;
	[musics addObject:music];
	
	music = [[TRMusic alloc] init];
	music.name			=	@"It's Time";
	music.album			=	@"It's Time";
	music.artist		=	@"Imagine Dragons";
	music.duration		=	[self durationWithMinutes:2 andSeconds:57];
	music.downloaded	=	YES;
	music.highQuality	=	YES;
	[musics addObject:music];
	
	music = [[TRMusic alloc] init];
	music.name			=	@"Dancing in The Moonlight";
	music.album			=	@"Dancing in The Moonlight: The Best of Toploader";
	music.artist		=	@"Toploader";
	music.duration		=	[self durationWithMinutes:3 andSeconds:51];
	music.downloaded	=	YES;
	music.highQuality	=	YES;
	[musics addObject:music];
	
	music = [[TRMusic alloc] init];
	music.name			=	@"Thinking About You (feat. Ayah Marar";
	music.album			=	@"18 Months (Deluxe Edition)";
	music.artist		=	@"Calvin Harris";
	music.duration		=	[self durationWithMinutes:2 andSeconds:21];
	music.downloaded	=	YES;
	music.highQuality	=	YES;
	[musics addObject:music];
	
	music = [[TRMusic alloc] init];
	music.name			=	@"You Make Me (feat. Salem Al Fakir";
	music.album			=	@"True";
	music.artist		=	@"Avivii";
	music.duration		=	[self durationWithMinutes:3 andSeconds:21];
	music.downloaded	=	YES;
	music.highQuality	=	NO;
	[musics addObject:music];
	
	music = [[TRMusic alloc] init];
	music.name			=	@"Safe and Sound";
	music.album			=	@"Capital Cities EP";
	music.artist		=	@"Capital Cities";
	music.duration		=	[self durationWithMinutes:3 andSeconds:29];
	music.downloaded	=	YES;
	music.highQuality	=	NO;
	[musics addObject:music];
	
	music = [[TRMusic alloc] init];
	music.name			=	@"Reaching Out";
	music.album			=	@"Welcome Reality (Deluxe Version)";
	music.artist		=	@"Nero";
	music.duration		=	[self durationWithMinutes:3 andSeconds:29];
	music.downloaded	=	YES;
	music.highQuality	=	NO;
	[musics addObject:music];
	
	music = [[TRMusic alloc] init];
	music.name			=	@"Recover";
	music.album			=	@"Recover - EP";
	music.artist		=	@"CHVRCHES";
	music.duration		=	[self durationWithMinutes:3 andSeconds:33];
	music.downloaded	=	YES;
	music.highQuality	=	NO;
	[musics addObject:music];
	
	music = [[TRMusic alloc] init];
	music.name			=	@"Hold On, We're Going Home (feat. Majid Jordan)";
	music.album			=	@"Hold On, We're Going Home (feat. Majid Jordan) - Single";
	music.artist		=	@"CHVRCHES";
	music.duration		=	[self durationWithMinutes:3 andSeconds:38];
	music.downloaded	=	YES;
	music.highQuality	=	NO;
	[musics addObject:music];
	
	music = [[TRMusic alloc] init];
	music.name			=	@"The Mother We Share";
	music.album			=	@"The Mother We Share - Single";
	music.artist		=	@"Drake";
	music.duration		=	[self durationWithMinutes:3 andSeconds:38];
	music.downloaded	=	YES;
	music.highQuality	=	NO;
	[musics addObject:music];
	
	music = [[TRMusic alloc] init];
	music.name			=	@"Promises";
	music.album			=	@"Promises - EP";
	music.artist		=	@"Nero";
	music.duration		=	[self durationWithMinutes:3 andSeconds:41];
	music.downloaded	=	YES;
	music.highQuality	=	NO;
	[musics addObject:music];
	
	music = [[TRMusic alloc] init];
	music.name			=	@"Alone Together";
	music.album			=	@"Save Rock and Roll";
	music.artist		=	@"Fall Out Boy";
	music.duration		=	[self durationWithMinutes:3 andSeconds:43];
	music.downloaded	=	YES;
	music.highQuality	=	NO;
	[musics addObject:music];
	
	music = [[TRMusic alloc] init];
	music.name			=	@"Reload (Radio Edit)";
	music.album			=	@"Reload (Radio Edit) - Single";
	music.artist		=	@"Sebastian Ingrosso";
	music.duration		=	[self durationWithMinutes:3 andSeconds:41];
	music.downloaded	=	YES;
	music.highQuality	=	NO;
	[musics addObject:music];
	
	music = [[TRMusic alloc] init];
	music.name			=	@"I Love It (feat. Charli XCX)";
	music.album			=	@"Iconic";
	music.artist		=	@"Icona Pop";
	music.duration		=	[self durationWithMinutes:3 andSeconds:9];
	music.downloaded	=	YES;
	music.highQuality	=	NO;
	[musics addObject:music];
	
	music = [[TRMusic alloc] init];
	music.name			=	@"Feel the Love";
	music.album			=	@"Feel the Love (feat. John Newman) [Remixes] - EP";
	music.artist		=	@"Rudimental";
	music.duration		=	[self durationWithMinutes:3 andSeconds:5];
	music.downloaded	=	YES;
	music.highQuality	=	NO;
	[musics addObject:music];
	
	music = [[TRMusic alloc] init];
	music.name			=	@"Goin' Crazy (feat. Robbie Williams)";
	music.album			=	@"Goin' Crazy (feat. Robbie Williams) - Single";
	music.artist		=	@"Dizzee Rascal";
	music.duration		=	[self durationWithMinutes:3 andSeconds:3];
	music.downloaded	=	YES;
	music.highQuality	=	NO;
	[musics addObject:music];
	
	music = [[TRMusic alloc] init];
	music.name			=	@"Still Into You";
	music.album			=	@"Paramore";
	music.artist		=	@"Paramore";
	music.duration		=	[self durationWithMinutes:3 andSeconds:1];
	music.downloaded	=	YES;
	music.highQuality	=	NO;
	[musics addObject:music];
	
	music = [[TRMusic alloc] init];
	music.name			=	@"Heart Attack";
	music.album			=	@"Demi";
	music.artist		=	@"Demi Lovato";
	music.duration		=	[self durationWithMinutes:2 andSeconds:59];
	music.downloaded	=	YES;
	music.highQuality	=	NO;
	[musics addObject:music];
	
	music = [[TRMusic alloc] init];
	music.name			=	@"Explosions";
	music.album			=	@"Halcyon (Deluxe Edition)";
	music.artist		=	@"Ellie Goulding";
	music.duration		=	[self durationWithMinutes:3 andSeconds:13];
	music.downloaded	=	YES;
	music.highQuality	=	NO;
	[musics addObject:music];
	
	music = [[TRMusic alloc] init];
	music.name			=	@"I Need Your Love (feat. Ellie Coulding)";
	music.album			=	@"I Need You Love";
	music.artist		=	@"Calvin Harris";
	music.duration		=	[self durationWithMinutes:3 andSeconds:49];
	music.downloaded	=	YES;
	music.highQuality	=	NO;
	[musics addObject:music];
	
	music = [[TRMusic alloc] init];
	music.name			=	@"Starry Eyed";
	music.album			=	@"Bright Lights";
	music.artist		=	@"Ellie Goulding";
	music.duration		=	[self durationWithMinutes:2 andSeconds:11];
	music.downloaded	=	YES;
	music.highQuality	=	NO;
	[musics addObject:music];
	
	music = [[TRMusic alloc] init];
	music.name			=	@"Lights (Single Version)";
	music.album			=	@"Bright Lights";
	music.artist		=	@"Ellie Goulding";
	music.duration		=	[self durationWithMinutes:3 andSeconds:19];
	music.downloaded	=	YES;
	music.highQuality	=	NO;
	[musics addObject:music];
	
	music = [[TRMusic alloc] init];
	music.name			=	@"Who's That Chick";
	music.album			=	@"Who's That Chick - Single";
	music.artist		=	@"David Guetta";
	music.duration		=	[self durationWithMinutes:2 andSeconds:47];
	music.downloaded	=	YES;
	music.highQuality	=	NO;
	[musics addObject:music];
	
	return [musics copy];
}


+(NSTimeInterval)durationWithMinutes:(NSInteger)minutes andSeconds:(NSInteger)seconds
{
	return minutes * 60 + seconds;
}

-(NSString *)durationInString:(NSTimeInterval)duration
{
	NSString *durationInString;
	
	NSInteger minute = (NSInteger)duration / 60;
	
	NSInteger second = (NSInteger)duration % 60;
	
	NSString *secondString;
	if (second < 10){
		secondString = [NSString stringWithFormat:@"0%d",(int)second];
	} else {
		secondString = [NSString stringWithFormat:@"%d",(int)second];
	}
	
	NSString *minuteString;
	if (minute < 10){
		minuteString = [NSString stringWithFormat:@"0%d",(int)minute];
	} else {
		minuteString = [NSString stringWithFormat:@"%d",(int)minute];
	}
	
	durationInString = [NSString stringWithFormat:@"%@:%@",minuteString,secondString];
	
	return durationInString;
}
@end
