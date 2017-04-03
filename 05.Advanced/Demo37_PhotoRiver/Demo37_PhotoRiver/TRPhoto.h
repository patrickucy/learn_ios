//
//  TRPhoto.h
//  Demo37_PhotoRiver
//
//  Created by Patrick Yu on 8/27/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TRDrawView.h"
#import "TRViewController.h"

@interface TRPhoto : UIView
@property (nonatomic) CGRect oldFrame;
@property (nonatomic) float oldAlpha;
@property (nonatomic) float speed;
@property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIView *canvas;
@property (nonatomic,strong) TRDrawView *drawView;
@property (nonatomic,weak) id delegate;
@property (nonatomic) int status;
@end
