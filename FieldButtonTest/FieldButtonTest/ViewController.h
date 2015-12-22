//
//  ViewController.h
//  FieldButtonTest
//
//  Created by imac on 2015. 12. 22..
//  Copyright © 2015년 imac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate, UITextViewDelegate>

@property (strong, nonatomic) IBOutlet UITextField *placeTextField;

@property (strong, nonatomic) IBOutlet UITextField *verbTextField;

@property (strong, nonatomic) IBOutlet UITextField *numberTextField;

@property (strong, nonatomic) IBOutlet UITextView  *templateTextView;

@property (strong, nonatomic) IBOutlet UITextView  *storyTextView;

- (IBAction)generateStoryAction:(id)sender;

- (BOOL)textFieldShouldReturn:(UITextField *)textField;

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event;

- (BOOL)textViewShouldBeginEditing:(UITextView *)textView;

- (BOOL)textViewShouldEndEditing:(UITextView *)textView;

@end

