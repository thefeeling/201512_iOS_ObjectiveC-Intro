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


-(NSString *)showCard{
    NSMutableString *strTemp = [[NSMutableString alloc] init];
    for (AddressCard *cardTemp in book) {
        [strTemp appendString:cardTemp.name];
        [strTemp appendString:@"\n"];
        [strTemp appendString:cardTemp.email];
        [strTemp appendString:@"\n"];
        [strTemp appendString:cardTemp.tel];
        [strTemp appendString:@"\n"];
        [strTemp appendString:@"----------------------\n"];
        
    }
    return strTemp;
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
