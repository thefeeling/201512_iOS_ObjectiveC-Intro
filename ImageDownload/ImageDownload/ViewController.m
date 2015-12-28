//
//  ViewController.m
//  ImageDownload
//
//  Created by imac on 2015. 12. 28..
//  Copyright © 2015년 imac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


@synthesize imgView,indicator,downloadProgressView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)downloadAction:(id)sender {
    /*
     NSURLConnection -> depricated됨
     NSURLSession 을 대신해서 사용하는걸 추천
     
     */
    
    // 비동기처리(async)
    // 디폴트 세션 가져옴
    NSURLSessionConfiguration *sessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:sessionConfiguration delegate:self delegateQueue:[NSOperationQueue mainQueue]];
    
    NSURLSessionDownloadTask *downloadTask = [session downloadTaskWithURL:[NSURL URLWithString:@"http://haha03da.cafe24.com/lecture/headphonedetail.png"]];
    
    [indicator startAnimating];
    [downloadTask resume];
    

}


-(void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didWriteData:(int64_t)bytesWritten totalBytesWritten:(int64_t)totalBytesWritten totalBytesExpectedToWrite:(int64_t)totalBytesExpectedToWrite{
    NSLog(@"%lli", bytesWritten);
    NSLog(@"%lli", totalBytesExpectedToWrite);
    
    float progress = (float)totalBytesWritten/(float)totalBytesExpectedToWrite;
    
    [self.downloadProgressView setProgress:progress animated:YES];
}


-(void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didFinishDownloadingToURL:(NSURL *)location{
    
    NSData *data = [NSData dataWithContentsOfURL:location];
    
    self.imgView.image = [UIImage imageWithData:data];
    [indicator stopAnimating];
}

@end
