//
//  ViewController.m
//  webViewBrowserTest
//
//  Created by  Choi Kyung Seok on 2015. 12. 22..
//  Copyright © 2015년 Choi Kyung Seok. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize urlTextField,browserWebView,urlSegment;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *initUrl = [[NSURL alloc]initWithString:@"http://www.google.com"];
    
    urlTextField.text = @"http://www.google.com";
    
    [browserWebView loadRequest:[NSURLRequest requestWithURL:initUrl]];
    urlTextField.delegate =self;
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    NSString *urlTxt = [[NSString alloc]initWithString:urlTextField.text];
    
    
    if(!([urlTxt containsString:@"http://"] || [urlTxt containsString:@"https://"]))
    {
        urlTxt = [@"http://" stringByAppendingString:urlTxt];
    }
    
    
    
    //    NSMutableString *tempUrlStr = [[NSMutableString alloc]initWithString:@"http://"];
    
    //[tempUrlStr appendString:urlTxt];
    
    NSURL *tempUrlTxt = [[NSURL alloc]initWithString:urlTxt];
    
    [browserWebView loadRequest:[NSURLRequest requestWithURL:tempUrlTxt]];

    /*
     [placeTextField resignFirstResponder];
     [verbTextField resignFirstResponder];
     [numberTextField resignFirstResponder];
     */
    //[textField resignFirstResponder];
    [urlTextField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

- (IBAction)movePageAction:(id)sender {
    
    NSString *urlTxt = [[NSString alloc]initWithString:urlTextField.text];

    NSURL *tempUrlTxt = [[NSURL alloc]initWithString:urlTxt];
    
<<<<<<< HEAD
    urlTextField.text = urlTxt;
    
=======
    
    if(!([urlTxt containsString:@"http://"] || [urlTxt containsString:@"https://"]))
    {
        urlTxt = [@"http://" stringByAppendingString:urlTxt];
    }
    
    
    
    //    NSMutableString *tempUrlStr = [[NSMutableString alloc]initWithString:@"http://"];

    //[tempUrlStr appendString:urlTxt];
    
    NSURL *tempUrlTxt = [[NSURL alloc]initWithString:urlTxt];

>>>>>>> a9f3eaf95acd59b19873ceb4217b57bb178b4ac0
    [browserWebView loadRequest:[NSURLRequest requestWithURL:tempUrlTxt]];
}

- (IBAction)backPageAction:(id)sender {
<<<<<<< HEAD
    if(browserWebView.canGoBack){
        [browserWebView goBack];
    }
}

- (IBAction)forwardPageAction:(id)sender {
    [browserWebView goForward];
=======
    [browserWebView goBack];
}

- (IBAction)forwardPageAction:(id)sender {
    
    if([browserWebView canGoForward]){
        [browserWebView goForward];
    }
}

- (IBAction)refreshPageAction:(id)sender {
    [browserWebView reload];
}

- (IBAction)segmentPageAction:(id)sender {
    NSString *segmentStr = [urlSegment titleForSegmentAtIndex:urlSegment.selectedSegmentIndex];

    if([segmentStr isEqualToString:@"Google"]){
        segmentStr = [segmentStr stringByAppendingString:@".com"];
    }
    else if ([segmentStr isEqualToString:@"Naver"]){
        segmentStr = [segmentStr stringByAppendingString:@".co.kr"];
    }
    else if ([segmentStr isEqualToString:@"Daum"]){
        segmentStr = [segmentStr stringByAppendingString:@".co.kr"];
    }
    else if ([segmentStr isEqualToString:@"Nate"]){
        segmentStr = [segmentStr stringByAppendingString:@".com"];
    }
    else{
        NSLog(@"Failure");
    }
    
    segmentStr = [@"http://www." stringByAppendingString:segmentStr];
    
    NSURL *tempUrlTxt = [[NSURL alloc]initWithString:segmentStr];
    
    urlTextField.text = segmentStr;
    [browserWebView loadRequest:[NSURLRequest requestWithURL:tempUrlTxt]];
}

- (IBAction)cancelPageAction:(id)sender {
    
    [browserWebView stopLoading];
    
>>>>>>> a9f3eaf95acd59b19873ceb4217b57bb178b4ac0
}
@end
