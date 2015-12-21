//
//  AddressBook.h
//  AddressBook
//
//  Created by imac on 2015. 12. 21..
//  Copyright © 2015년 imac. All rights reserved.
//

#import <Foundation/Foundation.h>


@class AddressCard;

@interface AddressBook : NSObject{
    NSMutableArray *book;
}

-(void)addCard:(AddressCard *)theCard;
-(void)showCard;
-(NSUInteger)countCard;
-(AddressCard *)findCard:(NSString *)theName;
-(void)removeCard:(AddressCard *)findCard;
@end
