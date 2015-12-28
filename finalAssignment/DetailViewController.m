//
//  DetailViewController.m
//  finalAssignment
//
//  Created by imac on 2015. 12. 24..
//  Copyright © 2015년 imac. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController


@synthesize goodsDetailDic;
@synthesize goodsDetailContact,goodsDetailDate,goodsDetailImage,goodsDetailName,goodsDetailState,goodsDetailValue,indicator,downloadProgressView;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSLog(@"%@", goodsDetailDic);
    NSLog(@"%@", [goodsDetailDic objectForKey:@"ProductName"]);
    NSLog(@"%@", [goodsDetailDic objectForKey:@"State"]);
    NSLog(@"%@", [goodsDetailDic objectForKey:@"Date"]);
    NSLog(@"%@", [goodsDetailDic objectForKey:@"Contact"]);
    NSLog(@"%@", [goodsDetailDic objectForKey:@"Value"]);
    
    
    NSString *imageStr = [goodsDetailDic objectForKey:@"ProductName"];
    
    goodsDetailName.text =[goodsDetailDic objectForKey:@"ProductName"];
    goodsDetailState.text = [goodsDetailDic objectForKey:@"State"];
    goodsDetailDate.text = [goodsDetailDic objectForKey:@"Date"];
    goodsDetailContact.text = [goodsDetailDic objectForKey:@"Contact"];
    goodsDetailValue.text = [goodsDetailDic objectForKey:@"Value"];
    
    
    /*
    if([imageStr isEqualToString:@"헤드폰"]){
        goodsDetailImage.image = [UIImage imageNamed:@"headphonedetail.png"];
    }
    else if([imageStr isEqualToString:@"iPod"]){
        goodsDetailImage.image = [UIImage imageNamed:@"ipoddetail.png"];
    }
    else if([imageStr isEqualToString:@"카메라"]){
        goodsDetailImage.image = [UIImage imageNamed:@"cameradetail.png"];
    }
    else if([imageStr isEqualToString:@"돋보기"]){
        goodsDetailImage.image = [UIImage imageNamed:@"magnifierdetail.png"];
    }
    else if([imageStr isEqualToString:@"자물쇠"]){
        goodsDetailImage.image = [UIImage imageNamed:@"lockdetail.png"];
    }
    else if([imageStr isEqualToString:@"집"]){
        goodsDetailImage.image = [UIImage imageNamed:@"housedetail.png"];
    }
    else if([imageStr isEqualToString:@"편지봉투"]){
        goodsDetailImage.image = [UIImage imageNamed:@"letterdetail.png"];
    }
    else if([imageStr isEqualToString:@"핸드폰"]){
        goodsDetailImage.image = [UIImage imageNamed:@"cellulardetail.png"];
    }
    else{
        goodsDetailImage.image = [UIImage imageNamed:@"lockdetail.png"];
    }
     */
    NSURLSessionConfiguration *sessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:sessionConfiguration delegate:self delegateQueue:[NSOperationQueue mainQueue]];
    
    NSURLSessionDownloadTask *downloadTask = [session downloadTaskWithURL:[NSURL URLWithString:[goodsDetailDic objectForKey:@"URLDetail"]]];
    
    [indicator startAnimating];
    [downloadTask resume];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didWriteData:(int64_t)bytesWritten totalBytesWritten:(int64_t)totalBytesWritten totalBytesExpectedToWrite:(int64_t)totalBytesExpectedToWrite{
    NSLog(@"%lli", bytesWritten);
    NSLog(@"%lli", totalBytesExpectedToWrite);
    
    float progress = (float)totalBytesWritten/(float)totalBytesExpectedToWrite;
    
    [self.downloadProgressView setProgress:progress animated:YES];
}


-(void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didFinishDownloadingToURL:(NSURL *)location{
    
    NSData *data = [NSData dataWithContentsOfURL:location];
    
    self.goodsDetailImage.image = [UIImage imageWithData:data];
    [indicator stopAnimating];
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
