//
//  CustomImageCell.h
//  finalAssignment
//
//  Created by imac on 2015. 12. 24..
//  Copyright © 2015년 imac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomImageCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *goodsNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *goodsQualityLabel;
@property (strong, nonatomic) IBOutlet UILabel *goodsDateLabel;
@property (strong, nonatomic) IBOutlet UIImageView *goodsImageView;

@end
