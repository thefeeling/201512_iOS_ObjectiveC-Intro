//
//  VolumeViewController.m
//  TabbarTest
//
//  Created by imac on 2015. 12. 23..
//  Copyright © 2015년 imac. All rights reserved.
//

#import "VolumeViewController.h"

@interface VolumeViewController ()

@end

@implementation VolumeViewController

@synthesize lengthTextField,
heightTextField,
widthTextField,
volumeTextLabel,
radiusTextField,
radiusVolumeTextField;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)calculateAction:(id)sender {
    long rtnBoxVolume = [lengthTextField.text integerValue] * [heightTextField.text integerValue] * [widthTextField.text integerValue];
    NSString *boxRtnStr = [[NSString alloc]initWithFormat:@"%li",rtnBoxVolume ];
    volumeTextLabel.text = boxRtnStr;
    
    float rtnCircleVolume = [radiusTextField.text integerValue] * [radiusTextField.text integerValue] * [radiusTextField.text integerValue] * 4/3 * 3.14;
    NSString *circleRtnStr = [[NSString alloc]initWithFormat:@"%.2f",rtnCircleVolume];
    radiusVolumeTextField.text = circleRtnStr;
    
    
}
@end
