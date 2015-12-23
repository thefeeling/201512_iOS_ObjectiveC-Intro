//
//  ViewController.m
//  DateCalculator
//
//  Created by imac on 2015. 12. 23..
//  Copyright © 2015년 imac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


@synthesize resultTextView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showDateAction:(id)sender {
    NSDate *todayDate = [[NSDate alloc]init];
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"MMMM d,yyyy hh:mm:ss"];
    
    // 포맷팅 처리 => 스트링으로 반환
    NSString *rtnDateStr = [dateFormat stringFromDate:todayDate];
    
    
    NSTimeInterval difference = [todayDate timeIntervalSinceDate:[sender date]]/86400;
    
    NSString *output = [[NSString alloc] initWithFormat:@"Today : %@\ndifference : %.2f", rtnDateStr, fabs(difference)];
    
    resultTextView.text = output;
}
@end
