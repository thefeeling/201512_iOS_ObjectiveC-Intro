//
//  AddressBook.m
//  AddressBook
//
//  Created by imac on 2015. 12. 21..
//  Copyright © 2015년 imac. All rights reserved.
//

#import "AddressBook.h"
#import "AddressCard.h"

@implementation AddressBook

-(id)init{
    self = [super init];
    if(self){
        book = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)addCard:(AddressCard *)theCard{

    [book addObject:theCard];
    //NSLog(@"Card 추가 완료");
}


-(void)showCard{
    for (AddressCard *cardTemp in book) {
        NSLog(@"name : %@", cardTemp.name);
        NSLog(@"email : %@", cardTemp.email);
        NSLog(@"tel : %@", cardTemp.tel);
    }
}

-(NSUInteger)countCard{
    return book.count;
}

-(AddressCard *)findCard:(NSString *)theName{
    for (AddressCard *cardTemp in book) {
        if([cardTemp.name isEqualToString:theName]){
            return cardTemp;
        }
    }
    return nil;
}

-(void)removeCard:(AddressCard *)findCard{
    [book removeObject:findCard];
    NSLog(@"Remove Success");
}


@end
