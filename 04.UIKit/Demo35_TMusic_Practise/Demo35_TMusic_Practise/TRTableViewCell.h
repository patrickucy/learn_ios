//
//  TRTableViewCell.h
//  Demo35_TMusic_Practise
//
//  Created by Patrick Yu on 7/29/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TRTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *CellLabelName;
@property (weak, nonatomic) IBOutlet UILabel *CellLabelArtist;
@property (weak, nonatomic) IBOutlet UILabel *CellLabelTimeDuration;


@end
