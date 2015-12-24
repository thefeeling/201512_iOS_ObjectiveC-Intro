//
//  ViewController.h
//  InstacneEmailTest
//
//  Created by imac on 2015. 12. 23..
//  Copyright © 2015년 imac. All rights reserved.
//

#import <UIKit/UIKit.h>





@interface ViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>{
    NSArray *activities;
    NSArray *feeling;
}

@property (strong, nonatomic) IBOutlet UIPickerView *emailPickerView;

- (IBAction)sendEmailAction:(id)sender;

@end

