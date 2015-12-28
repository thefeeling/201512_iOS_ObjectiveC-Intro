//
//  ViewController.m
//  BeautyOfKorea
//
//  Created by imac on 2015. 12. 28..
//  Copyright © 2015년 imac. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"


@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier]isEqualToString:@"menu1"]) {
        [[segue destinationViewController]setCurrentMenu:1];

    }
    else if ([[segue identifier]isEqualToString:@"menu2"]){
        [[segue destinationViewController]setCurrentMenu:2];
    }
    else if ([[segue identifier]isEqualToString:@"menu3"]){
        [[segue destinationViewController]setCurrentMenu:3];
    }
    else if ([[segue identifier]isEqualToString:@"menu4"]){
        [[segue destinationViewController]setCurrentMenu:4];
    }
    else{
        [[segue destinationViewController]setCurrentMenu:5];
    }
}

@end
