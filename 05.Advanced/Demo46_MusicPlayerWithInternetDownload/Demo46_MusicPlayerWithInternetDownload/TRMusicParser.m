//
//  TRMusicParser.m
//  Demo46_MusicPlayerWithInternetDownload
//
//  Created by Yu on 9/5/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRMusicParser.h"

@implementation TRMusicParser
-(TRMusic *)parseMusicInfoByXmlData:(NSData *)data
{
	self.music = [[TRMusic alloc] init];
	NSXMLParser *xmlParser = [[NSXMLParser alloc] initWithData:data];
	xmlParser.delegate = self;
	[xmlParser parse];
	return self.music;
}


-(void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{

}


-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
	self.string = string;
}


-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
	if ([elementName isEqualToString:@"encode"] && !self.music.encodePath) {
		//找到encode元素名之后应该把元素名夹在中间的string给赋值到app里
		//因为你发现xml里面会返回多个url,所以你要判断在加载url的时候判断是否与之前的一样,是一样的就不要加载了
		self.music.encodePath = self.string;
	}else if ([elementName isEqualToString:@"decode"] && !self.music.decodePath){
		self.music.decodePath = self.string;
	}else if ([elementName isEqualToString:@"lrcid"]){
		self.music.lrcid = self.string;
	}
}
@end
