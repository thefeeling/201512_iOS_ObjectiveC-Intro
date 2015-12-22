//
//  ViewController.m
//  ImageHopTest
//
//  Created by imac on 2015. 12. 22..
//  Copyright © 2015년 imac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize imgView;
@synthesize speedLabel;
@synthesize speedSlider;
@synthesize toggleButton;

// @synthesize imgView,speedLabel,speedSlider;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
     이미지 파일의 경우, 화면상에서는 논리적으로만 관리하고(폴더)
     실제로는 전체로 관리하기 때문에, 파일 이름은 동일한 것을 사용해서는 안된다.
     */
    NSArray *hopImages = [[NSArray alloc]initWithObjects:
                          [UIImage imageNamed:@"frame-1.png"],
                          [UIImage imageNamed:@"frame-2.png"],
                          [UIImage imageNamed:@"frame-3.png"],
                          [UIImage imageNamed:@"frame-4.png"],
                          [UIImage imageNamed:@"frame-5.png"],
                          [UIImage imageNamed:@"frame-6.png"],
                          [UIImage imageNamed:@"frame-7.png"],
                          [UIImage imageNamed:@"frame-8.png"],
                          [UIImage imageNamed:@"frame-9.png"],
                          [UIImage imageNamed:@"frame-10.png"],
                          [UIImage imageNamed:@"frame-11.png"],
                          [UIImage imageNamed:@"frame-12.png"],
                          [UIImage imageNamed:@"frame-13.png"],
                          [UIImage imageNamed:@"frame-14.png"],
                          [UIImage imageNamed:@"frame-15.png"],
                          [UIImage imageNamed:@"frame-16.png"],
                          [UIImage imageNamed:@"frame-17.png"],
                          [UIImage imageNamed:@"frame-18.png"],
                          [UIImage imageNamed:@"frame-19.png"],
                          [UIImage imageNamed:@"frame-20.png"],
                          nil];
    
    imgView.animationImages = hopImages;
    imgView.animationDuration = 1.0;
    [imgView startAnimating];   
    
}




-(IBAction)toggleAction:(id)sender{

    if([imgView isAnimating]){
        [imgView stopAnimating];
        [toggleButton setTitle:@"Hop!" forState:UIControlStateNormal];
    }else{
        imgView.animationDuration = 2.2 - speedSlider.value;
        [imgView startAnimating];
        [toggleButton setTitle:@"Sit!" forState:UIControlStateNormal];
    }
    
}

-(IBAction)setSpeedAction:(id)sender{
    imgView.animationDuration = 2.2 - speedSlider.value;
    
    [imgView startAnimating];
    
    [toggleButton setTitle:@"Sit!" forState:UIControlStateNormal];
    
    NSString *speedStr = [[NSString alloc]initWithFormat:@"%.2f",speedSlider.value];
    speedLabel.text = speedStr;
    NSLog(@"Set Speed Action init");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






@end
