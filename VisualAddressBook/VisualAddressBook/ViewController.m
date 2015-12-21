//
//  ViewController.m
//  VisualAddressBook
//
//  Created by imac on 2015. 12. 21..
//  Copyright © 2015년 imac. All rights reserved.
//

#import "ViewController.h"
#import "AddressCard.h"
#import "AddressBook.h"


@interface ViewController ()

@end

@implementation ViewController

@synthesize resultTextView;

- (void)viewDidLoad {
    [super viewDidLoad];
    AddressCard *card1 = [[AddressCard alloc]init];
    card1.name = @"최경석";
    card1.email = @"ssingame@nate.com";
    card1.tel = @"010-9955-3768";
    
    //[card1 print];
    
    AddressCard *card2 = [[AddressCard alloc]init];
    card2.name = @"홍길동";
    card2.email = @"ssingame1@nate.com";
    card2.tel = @"010-9954-3338";
    //[card2 print];
    
    AddressCard *card3 = [[AddressCard alloc]init];
    card3.name = @"임꺽정";
    card3.email = @"ssi1ngame@nate.com";
    card3.tel = @"010-7955-4448";
    //[card3 print];
    
    myBook = [[AddressBook alloc]init];
    [myBook addCard:card1];
    [myBook addCard:card2];
    [myBook addCard:card3];
    //[myBook showCard];
    
    NSLog(@"count %li", [myBook countCard]);
    
    AddressCard *cardTtemp = [myBook findCard:@"최경석"];
    if(cardTtemp == nil){
        NSLog(@"NoNo!!!!!");
        
    }else{
        NSLog(@"Infomation");
        NSLog(@"name : %@", cardTtemp.name);
        NSLog(@"email : %@", cardTtemp.email);
        NSLog(@"Tel : %@", cardTtemp.tel);
    }
    
    NSLog(@"삭제 후 검색");
    [myBook removeCard:cardTtemp];
    //[myBook showCard];
    // Do any additional setup after loading the view, typically from a nib.
}


-(IBAction)showCardAction:(id)sender{
    //NSLog(@"showCardAction");
    resultTextView.text = @"showCardAction";
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
