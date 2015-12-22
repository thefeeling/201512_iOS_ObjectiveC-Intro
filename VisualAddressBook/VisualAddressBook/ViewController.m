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
@synthesize nameTextField;
@synthesize emailTextField;
@synthesize telTextField;
@synthesize countLabel;

/*
 초기화 코드 부분
 */
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
    
    //  AdressCard 추가
    myBook = [[AddressBook alloc]init];
    [myBook addCard:card1];
    [myBook addCard:card2];
    [myBook addCard:card3];
    //[myBook showCard];
    
    /*
     카운트 - 찾기 - 삭제
     
     
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
     */
    
    //[myBook showCard];
    
    
    
    /*
     현재 등록된 사람 추가
     */
    NSString *strTemp = [[NSString alloc]initWithFormat:@"%li",[myBook countCard]];
    countLabel.text = strTemp;
}


-(IBAction)showCardAction:(id)sender{
    //NSLog(@"showCardAction");
    resultTextView.text = [myBook showCard];
}

-(IBAction)addCardAction:(id)sender{
    AddressCard *tempCard = [[AddressCard alloc]init];
    
    /*
     .연산자 사용법
     [] 연산자 사용하여 값 참조
     */
    tempCard.name = nameTextField.text;
    [tempCard setEmail:[emailTextField text]];
    [tempCard setTel:[telTextField text]];
    
    /*
     AddressBook 인스턴스에 tempCard 추가
     */
    [myBook addCard:tempCard];
    
    resultTextView.text = @"등록이 완료되었습니다.";
}

-(IBAction)findCardAction:(id)sender{
    AddressCard *tempCard = [myBook findCard:nameTextField.text];
    if(tempCard == nil){
        resultTextView.text = @"검색 결과가 없습니다.";
    }
    else{
        NSMutableString *strTemp = [[NSMutableString alloc]init];
        [strTemp appendString:@"찾는분의 정보는 아래와 같습니다.\n"];
        [strTemp appendString:@"------------------------\n"];
        [strTemp appendString:tempCard.name];
        [strTemp appendString:@"\n"];
        [strTemp appendString:tempCard.email];
        [strTemp appendString:@"\n"];
        [strTemp appendString:tempCard.tel];
        resultTextView.text = strTemp;
    }
}

-(IBAction)removeCardAction:(id)sender{
    AddressCard *tempCard = [myBook findCard:nameTextField.text];
    if(tempCard == nil){
        resultTextView.text = @"삭제 데이터가 없습니다.";
    }
    else{
        NSMutableString *strTemp = [[NSMutableString alloc]init];
        [strTemp appendString:tempCard.name];
        [strTemp appendString:@"님이 삭제 되었습니다."];
        [strTemp appendString:@"-----------------"];
        [myBook removeCard:tempCard];
        resultTextView.text = strTemp;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
