//
//  VolumeViewController.h
//  TabbarTest
//
//  Created by imac on 2015. 12. 23..
//  Copyright © 2015년 imac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VolumeViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *lengthTextField;

@property (strong, nonatomic) IBOutlet UITextField *heightTextField;
@property (strong, nonatomic) IBOutlet UITextField *widthTextField;

@property (strong, nonatomic) IBOutlet UILabel *volumeTextLabel;



@property (strong, nonatomic) IBOutlet UITextField *radiusTextField;
@property (strong, nonatomic) IBOutlet UILabel *radiusVolumeTextField;


- (IBAction)calculateAction:(id)sender;

@end
