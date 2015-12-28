//
//  DetailViewController.h
//  finalAssignment
//
//  Created by imac on 2015. 12. 24..
//  Copyright © 2015년 imac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController<NSURLSessionDownloadDelegate>


@property (strong,nonatomic) NSDictionary *goodsDetailDic;
@property (strong, nonatomic) IBOutlet UIImageView *goodsDetailImage;

@property (strong, nonatomic) IBOutlet UILabel *goodsDetailName;
@property (strong, nonatomic) IBOutlet UILabel *goodsDetailState;

@property (strong, nonatomic) IBOutlet UILabel *goodsDetailDate;
@property (strong, nonatomic) IBOutlet UILabel *goodsDetailContact;
@property (strong, nonatomic) IBOutlet UILabel *goodsDetailValue;

@property (strong, nonatomic) IBOutlet UIProgressView *downloadProgressView;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *indicator;
@end
