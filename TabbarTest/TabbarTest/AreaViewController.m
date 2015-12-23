//
//  AreaViewController.m
//  TabbarTest
//
//  Created by imac on 2015. 12. 23..
//  Copyright © 2015년 imac. All rights reserved.
//

#import "AreaViewController.h"

@interface AreaViewController ()

@end

@implementation AreaViewController

@synthesize widthTextField,
            heightTextField,
            radiusTextField,
            rectAreaLabel,
            circleAreaLabel;

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
    long rtnValue = [widthTextField.text integerValue] * [heightTextField.text integerValue];
    
    NSString *rtnStrValue = [[NSString alloc]initWithFormat:@"%li",rtnValue];
    
    rectAreaLabel.text = rtnStrValue;
    
    float radiusRtnValue = [radiusTextField.text integerValue] * [radiusTextField.text integerValue] * 3.14;
    
    NSString *radiusRtnStr = [[NSString alloc]initWithFormat:@"%.2f",radiusRtnValue];
    
    circleAreaLabel.text = radiusRtnStr;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

@end
