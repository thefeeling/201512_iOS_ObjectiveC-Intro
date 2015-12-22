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

@property (strong, nonatomic) IBOutlet UITextView  *resultTextView;
@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextField *telTextField;
@property (strong, nonatomic) IBOutlet UITextField *emailTextField;


-(IBAction)showCardAction:(id)sender;

-(IBAction)addCardAction:(id)sender;

-(IBAction)findCardAction:(id)sender;

-(IBAction)removeCardAction:(id)sender;

@end

