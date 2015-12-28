//
//  DetailViewController.h
//  BeautyOfKorea
//
//  Created by imac on 2015. 12. 28..
//  Copyright © 2015년 imac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property int currentMenu;
@property (strong, nonatomic) IBOutlet UIScrollView *detailScrollView;

- (IBAction)backButtonAction:(id)sender;




@end
