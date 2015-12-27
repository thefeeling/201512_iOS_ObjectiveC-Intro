//
//  ViewController.m
//  InstacneEmailTest
//
//  Created by imac on 2015. 12. 23..
//  Copyright © 2015년 imac. All rights reserved.
//

#import "ViewController.h"
#import <MessageUI/MessageUI.h>



@interface ViewController ()

@end

@implementation ViewController


@synthesize emailPickerView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    activities = [[NSArray alloc]initWithObjects:@"Sleep",@"Eating",@"Working",@"Thinking",@"Crying",@"Shopping",@"Playing", nil];
    feeling    = [[NSArray alloc]initWithObjects:@"awesome",@"happy",@"confused",@"anxious",@"sad",@"hopeful", nil];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//PickerView로 값 가져오는거 버그
- (IBAction)sendEmailAction:(id)sender {
    NSString *theMessage = [[NSString alloc]initWithFormat:@"I'm %@ and Feeling %@",
                            [activities objectAtIndex:[emailPickerView selectedRowInComponent:0]],
                            [feeling objectAtIndex:[emailPickerView selectedRowInComponent:1]]];
    
    
    NSLog(@"%@", theMessage);
    
    if([MFMailComposeViewController canSendMail]){
        MFMailComposeViewController *mailController = [[MFMailComposeViewController alloc]init];
        [mailController setSubject:@"Hello Marry"];
        [mailController setMessageBody:@"Hi Marry" isHTML:NO];
        
        [self presentViewController:mailController animated:YES completion:nil];
        
        
    }else{
        NSLog(@"Sorry, You need to setup up Mail");
    }
    
    
    
    
}

/*
 
 API - Required 반드시 implement처리해야 함.
 */
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if(component == 0){
        return activities.count;
    }else{
        return feeling.count;
    }
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if(component == 0){
        return [activities objectAtIndex:row];
    }else{
        return [feeling objectAtIndex:row];
    }
}



-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSLog(@"didSelectRow");
}

//UI간격 조절이 가능함.
-(CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component{

    return 200.0;
}






@end
