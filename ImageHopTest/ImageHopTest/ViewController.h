//
//  ViewController.h
//  ImageHopTest
//
//  Created by imac on 2015. 12. 22..
//  Copyright © 2015년 imac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController



@property (strong,nonatomic) IBOutlet UIImageView *imgView;
@property (strong,nonatomic) IBOutlet UISlider    *speedSlider;
@property (strong,nonatomic) IBOutlet UILabel     *speedLabel;
@property (strong,nonatomic) IBOutlet UIButton    *toggleButton;

-(IBAction)toggleAction:(id)sender;

-(IBAction)setSpeedAction:(id)sender;



@end

