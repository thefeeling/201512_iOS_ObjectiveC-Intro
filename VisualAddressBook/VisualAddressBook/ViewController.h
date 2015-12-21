//
//  ViewController.h
//  VisualAddressBook
//
//  Created by imac on 2015. 12. 21..
//  Copyright © 2015년 imac. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AddressBook;

@interface ViewController : UIViewController{
    AddressBook *myBook;
}

@property (strong,nonatomic) IBOutlet UITextView *resultTextView;

-(IBAction)showCardAction:(id)sender;

@end

