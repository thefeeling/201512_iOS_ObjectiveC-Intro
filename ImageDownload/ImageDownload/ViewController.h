//
//  ViewController.h
//  ImageDownload
//
//  Created by imac on 2015. 12. 28..
//  Copyright © 2015년 imac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<NSURLSessionDownloadDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *imgView;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *indicator;
@property (strong, nonatomic) IBOutlet UIProgressView *downloadProgressView;


- (IBAction)downloadAction:(id)sender;

@end

