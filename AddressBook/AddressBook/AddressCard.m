//
//  AddressCard.m
//  AddressBook
//
//  Created by imac on 2015. 12. 21..
//  Copyright © 2015년 imac. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard

@synthesize name,email,tel;

-(void)print{
    NSLog(@"name : %@"   , name);
    NSLog(@"email : %@"  , email);
    NSLog(@"tel : %@"    , tel);
}




@end
