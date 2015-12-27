//
//  ViewController.h
//  FlowerAppTest
//
//  Created by imac on 2015. 12. 22..
//  Copyright © 2015년 imac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIWebViewDelegate>


@property (strong,nonatomic) IBOutlet UISegmentedControl *colorChoiceSegmentedControl;
@property (strong,nonatomic) IBOutlet UIWebView *flowerWebview;
@property (strong,nonatomic) IBOutlet UIWebView *flowerDetailWebView;

@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicatorView;


-(IBAction)getFlowerAction:(id)sender;

-(IBAction)toggleAction:(id)sender;



@end