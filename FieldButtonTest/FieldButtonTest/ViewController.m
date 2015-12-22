//
//  ViewController.m
//  FieldButtonTest
//
//  Created by imac on 2015. 12. 22..
//  Copyright © 2015년 imac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize placeTextField   ,
            verbTextField    ,
            numberTextField  ,
            templateTextView ,
            storyTextView;

/*
 
 [UIResponder API 참고]
 
 */


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    /*
     
     textField에서 발생하는 이벤트 delegate를 스스로에게(자신에게)
     */
    placeTextField.delegate = self;
    verbTextField.delegate = self;
    numberTextField.delegate = self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)generateStoryAction:(id)sender {
    storyTextView.text = [templateTextView.text stringByReplacingOccurrencesOfString:@"<place>" withString:placeTextField.text];

    storyTextView.text = [storyTextView.text stringByReplacingOccurrencesOfString:@"<verb>" withString:verbTextField.text];

    storyTextView.text = [storyTextView.text stringByReplacingOccurrencesOfString:@"<number>" withString:numberTextField.text];

}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    /*
     포커스를 비활성화 시키면서 내려감.
     
     */
    /*
    [placeTextField resignFirstResponder];
    [verbTextField resignFirstResponder];
    [numberTextField resignFirstResponder];
    */
    [textField resignFirstResponder];
    
    //NSLog(@"return key press");
    
    
    
    return YES;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    /*
     Editting이 시작되면 화면을 위로 올림
     */
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    self.view.frame = CGRectMake(self.view.frame.origin.x
                                 ,self.view.frame.origin.y - 200
                                 ,self.view.frame.size.width
                                 ,self.view.frame.size.height);
    
    [UIView commitAnimations];
    
    
    NSLog(@"textViewShouldBeginEditing");
    return YES;
}

- (BOOL)textViewShouldEndEditing:(UITextView *)textView{
    NSLog(@"textViewShouldBeginEditing");
    self.view.frame = CGRectMake(self.view.frame.origin.x
                                 ,self.view.frame.origin.y + 200
                                 ,self.view.frame.size.width
                                 ,self.view.frame.size.height);
    return YES;
}


@end
