//
//  ViewController.m
//  InstacneEmailTest
//
//  Created by imac on 2015. 12. 23..
//  Copyright © 2015년 imac. All rights reserved.
//

#import "ViewController.h"

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

- (IBAction)sendEmailAction:(id)sender {
    
    
    
    
    
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



@end
