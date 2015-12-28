//
//  DetailViewController.m
//  BeautyOfKorea
//
//  Created by imac on 2015. 12. 28..
//  Copyright © 2015년 imac. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

@synthesize currentMenu,detailScrollView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *imgView;
    
    switch (currentMenu) {
        case 1:
            imgView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"introByungsan.png"]];
            break;
        case 2:
            imgView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"introBulguksa.png"]];
            break;
        case 3:
            imgView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"introBusoksa.png"]];
            break;
        case 4:
            imgView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"introChumsongdae.png"]];
            break;
        default:
            imgView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"introAndong.png"]];
            break;
    }
    
    
    [detailScrollView addSubview:imgView];
    [detailScrollView setContentSize:CGSizeMake(imgView.frame.size.width, imgView.frame.size.height)];
    [detailScrollView setScrollEnabled:YES];
    
    
    NSLog(@"segue cnt => %i", currentMenu);
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

- (IBAction)backButtonAction:(id)sender {
    /*
     
     Stack 구조(Push / Pop)
     */
    [self.navigationController popViewControllerAnimated:YES];
    
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier]isEqualToString:@"showGallery"]) {
        [[segue destinationViewController]setCurrentMenu:currentMenu];
        
    }
}

@end
