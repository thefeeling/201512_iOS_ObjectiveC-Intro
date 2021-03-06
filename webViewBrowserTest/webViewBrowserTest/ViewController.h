//
//  ViewController.h
//  webViewBrowserTest
//
//  Created by  Choi Kyung Seok on 2015. 12. 22..
//  Copyright © 2015년 Choi Kyung Seok. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *urlTextField;

@property (weak, nonatomic) IBOutlet UIWebView *browserWebView;

@property (strong, nonatomic) IBOutlet UISegmentedControl *urlSegment;

- (IBAction)movePageAction:(id)sender;
- (IBAction)backPageAction:(id)sender;
- (IBAction)forwardPageAction:(id)sender;

- (IBAction)forwardPageAction:(id)sender;

- (IBAction)refreshPageAction:(id)sender;

- (IBAction)segmentPageAction:(id)sender;

- (IBAction)cancelPageAction:(id)sender;

@end

