//
//  TRStudent.m
//  dayp04-MRC
//
//  Created by Patrick Yu on 6/11/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import "TRStudent.h"

@implementation TRStudent
-(void)study
{
	NSLog(@"study method is implemented and read a book:%@ price:%d",self.book,self.book.price);
}
-(void)setBook:(TRBook *)book
{
	if (_book!=nil) { //先判断以前有没有看过书，如果看过则先换掉再看，也就是要调整一下计数器  38：08
		[_book release];
	}
	_book = book;
	[_book retain];//直接在赋值的时候就加1了
}
-(void)dealloc
{
	[self.book release];//在Student对象引用数字减1之前要将所有属性减1
	NSLog(@" TRStudent deallec methoed is implemented ");
	//[super dealloc];
}
@end
