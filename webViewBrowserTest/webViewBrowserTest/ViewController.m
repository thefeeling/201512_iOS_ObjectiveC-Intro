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

@synthesize urlTextField,browserWebView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    NSURL *initUrl = [[NSURL alloc]initWithString:@"http://www.google.com"];
    
    urlTextField.text = @"http://www.google.com";
    
    [browserWebView loadRequest:[NSURLRequest requestWithURL:initUrl]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

- (IBAction)movePageAction:(id)sender {
    
    NSString *urlTxt = [[NSString alloc]initWithString:urlTextField.text];

    NSURL *tempUrlTxt = [[NSURL alloc]initWithString:urlTxt];
    
    urlTextField.text = urlTxt;
    
    [browserWebView loadRequest:[NSURLRequest requestWithURL:tempUrlTxt]];
}

- (IBAction)backPageAction:(id)sender {
    if(browserWebView.canGoBack){
        [browserWebView goBack];
    }
}

- (IBAction)forwardPageAction:(id)sender {
    [browserWebView goForward];
}
@end
