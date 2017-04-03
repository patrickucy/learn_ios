//
//  TRViewController.m
//  Demo43_XML_Dom
//
//  Created by Yu on 9/4/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRViewController.h"
#import "TBXML.h"
#import "TRBook.h"

@interface TRViewController ()

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	NSString *xmlPath = [[NSBundle mainBundle] pathForResource:@"books" ofType:@"xml"];
	NSData *xmlData = [NSData dataWithContentsOfFile:xmlPath];

	TBXML *tbXML = [[TBXML alloc] initWithXMLData:xmlData error:nil];
	//这里的rootElement就是xml里面的最根级books
	TBXMLElement *booksElement = tbXML.rootXMLElement;
	TBXMLElement *bookElement = [TBXML childElementNamed:@"book" parentElement:booksElement];
	NSMutableArray *books = [NSMutableArray array];
	
	while (bookElement) {
		TRBook *book = [[TRBook alloc]init];
		NSString *bookID = [TBXML valueOfAttributeNamed:@"id" forElement:bookElement];
		NSLog(@"id = %@",bookID);
		TBXMLElement *nameElement = [TBXML childElementNamed:@"name" parentElement:bookElement];
		TBXMLElement *authorElement = [TBXML childElementNamed:@"author" parentElement:bookElement];
		TBXMLElement *priceElement = [TBXML childElementNamed:@"price" parentElement:bookElement];
		TBXMLElement *pageElement = [TBXML childElementNamed:@"page" parentElement:bookElement];
		book.name = [TBXML textForElement:nameElement];
		book.author = [TBXML textForElement:authorElement];
		book.page = [[TBXML textForElement:pageElement] intValue];
		book.price = [[TBXML textForElement:priceElement] intValue];
		
		[books addObject:book];
		
		//查找下一个兄弟元素
		bookElement = [TBXML nextSiblingNamed:@"book" searchFromElement:bookElement];
		
		for (TRBook *book in books) {
			NSLog(@"%@",book);
		}
	}
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
