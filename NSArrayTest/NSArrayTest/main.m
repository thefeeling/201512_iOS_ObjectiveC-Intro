//
//  main.m
//  NSArrayTest
//
//  Created by imac on 2015. 12. 21..
//  Copyright © 2015년 imac. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *month = [[NSArray alloc]initWithObjects:@"January", @"February", @"March", @"April", @"May", @"June", @"July", nil];

//        for (int i = 0; i < [month count]; i++) {
//            NSLog(@"month : %@", [month objectAtIndex:i]);
//
//        }
        
        
        /*
         * For In 사용의 경우
         */
        for (NSString *loopStr in month) {
            NSLog(@"month : %@", loopStr);
        }
        
        
        NSMutableArray *muarr = [[NSMutableArray alloc]initWithArray:month];
        
        [muarr addObject:@"August"];
        [muarr addObject:@"September"];
        [muarr addObject:@"October"];
        [muarr addObject:@"November"];
        [muarr addObject:@"December"];
        
        for(NSString *instr in muarr){
            NSLog(@"Month => %@", instr);
        }
        
        
        
        
    }
    return 0;
}
