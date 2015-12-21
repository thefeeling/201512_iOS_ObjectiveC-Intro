//
//  main.m
//  NSStringTest
//
//  Created by imac on 2015. 12. 21..
//  Copyright © 2015년 imac. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSString *str = [[NSString alloc]init];
        NSString *res;
        str = @"This is String A";
        //NSLog(@"%@", str);
        
        
        res = [[str substringFromIndex:8]substringToIndex:6];
        NSLog(@"%@", res);
        
        res = [[str substringWithRange:NSMakeRange(8, 6)]uppercaseString];
        NSLog(@"%@", res);
        
        
        NSMutableString *mstr = [[NSMutableString alloc]initWithString:str];
        
        [mstr insertString:@" mutable " atIndex:8];
        NSLog(@"%@", mstr);
        
        [mstr appendString:@" and String B"];
        NSLog(@"%@", mstr);
        
        [mstr insertString:@" and String C " atIndex:[mstr length]];
        NSLog(@"%@", mstr);
        
        

    }
    return 0;
}
