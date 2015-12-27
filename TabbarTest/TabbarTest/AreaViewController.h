//
//  AreaViewController.h
//  TabbarTest
//
//  Created by imac on 2015. 12. 23..
//  Copyright © 2015년 imac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AreaViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *widthTextField;
@property (strong, nonatomic) IBOutlet UITextField *heightTextField;
@property (strong, nonatomic) IBOutlet UITextField *radiusTextField;

@property (strong, nonatomic) IBOutlet UILabel *rectAreaLabel;

@property (strong, nonatomic) IBOutlet UILabel *circleAreaLabel;

- (IBAction)calculateAction:(id)sender;
@end
