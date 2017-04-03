//
//  TRViewController.m
//  Demo42_XML_Sax
//
//  Created by Yu on 9/4/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TRBook.h"	

@interface TRViewController ()
@property (nonatomic,strong) TRBook	*currentBook;
@property (nonatomic,copy) NSString *currentString;
@property (nonatomic,strong) NSMutableArray *books;
@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	self.books = [NSMutableArray array];
	NSString *xmlPath = [[NSBundle mainBundle] pathForResource:@"books" ofType:@"xml"];
	NSData *xmlData = [NSData dataWithContentsOfFile:xmlPath];
	//创建一个xml解析器
	NSXMLParser *xmlParser = [[NSXMLParser alloc] initWithData:xmlData];
	xmlParser.delegate = self;
	//开始解析,并且是sax解析,逐行解析
	[xmlParser parse];
	
	
	for (TRBook *book in self.books) {
		NSLog(@"%@",book);
	}
}

-(void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
//	NSLog(@"标签开始: %@",elementName);//所以elementName就等于<></>里面的内容
	if ([elementName isEqualToString:@"book"]) {
		self.currentBook = [[TRBook alloc] init];
		NSLog(@"%@",[attributeDict objectForKey:@"id"]);
		[self.books addObject:self.currentBook]; //先装进去和后装进去是没有区别的,因为你操作的是对象的指针,还是同一个对象
	}
}

-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
//	NSLog(@"发现字符串: %@",string);
	self.currentString = string;
}


-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
//	NSLog(@"标签结束: %@",elementName);
	if ([elementName isEqualToString:@"name"]) {
		self.currentBook.name = self.currentString;
	}else if ([elementName isEqualToString:@"author"]){
		self.currentBook.author = self.currentString;
	}else if ([elementName isEqualToString:@"price"]){
		self.currentBook.price = [self.currentString intValue];
	}else if ([elementName isEqualToString:@"page"]){
		self.currentBook.page = [self.currentString intValue];
	}
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
