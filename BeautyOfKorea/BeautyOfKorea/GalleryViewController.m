//
//  GalleryViewController.m
//  BeautyOfKorea
//
//  Created by imac on 2015. 12. 28..
//  Copyright © 2015년 imac. All rights reserved.
//

#import "GalleryViewController.h"
#define imgHeight 466.0
#define imgWidth 300.0
#define imgNumber 20

@interface GalleryViewController ()

@end

@implementation GalleryViewController


@synthesize currentMenu,galleryScrollView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
     @2x
     @3x 이미지 해상도 전환
     */
    
    NSLog(@"gallery photos => %i", currentMenu);
    
    for (int i = 0; i < imgNumber; i++) {
        NSString *imageName = [[NSString alloc]initWithFormat:@"photos_%i_%02i.JPG", currentMenu, i];
        UIImageView *imgView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:imageName]];
        
        imgView.tag = i;
        [galleryScrollView addSubview:imgView];
    }
    
    
    NSArray *subviews = [galleryScrollView subviews];
    NSLog(@"%li", subviews.count);
    
    
    CGFloat xLoc = 0;
    for (UIImageView *view in subviews) {
        if ([view isKindOfClass:[UIImageView class]] && view.tag > 0) {
            CGRect frame = view.frame;
            frame.origin = CGPointMake(xLoc, 0);
            view.frame  = frame;
            
            xLoc += imgWidth;
        }
    }
    
    [galleryScrollView setContentSize:CGSizeMake(imgNumber * imgWidth, [galleryScrollView bounds].size.height)];
    
    [galleryScrollView setScrollEnabled:YES];
    galleryScrollView.pagingEnabled = YES;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

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
    [self.navigationController popViewControllerAnimated:YES];
}
@end
