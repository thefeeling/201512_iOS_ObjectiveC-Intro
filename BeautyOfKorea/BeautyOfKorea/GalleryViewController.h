//
//  GalleryViewController.h
//  BeautyOfKorea
//
//  Created by imac on 2015. 12. 28..
//  Copyright © 2015년 imac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GalleryViewController : UIViewController

@property int currentMenu;
- (IBAction)backButtonAction:(id)sender;

@property (strong, nonatomic) IBOutlet UIScrollView *galleryScrollView;

@end
