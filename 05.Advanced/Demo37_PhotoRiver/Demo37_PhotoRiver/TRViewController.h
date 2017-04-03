//
//  TRViewController.h
//  Demo37_PhotoRiver
//
//  Created by Patrick Yu on 8/27/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TRPhoto;

@interface TRViewController : UIViewController
//为什么删除了上面的class的代码会出现,识别不了下面这个类呢?因为TRPhoto里面import了TRViewController.h,TRViewController.h里面import了TRPhoto
-(void)changeImageForPhoto:(TRPhoto *)photo;

@end
