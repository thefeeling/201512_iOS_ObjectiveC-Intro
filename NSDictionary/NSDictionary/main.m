//
//  main.m
//  NSDictionary
//
//  Created by imac on 2015. 12. 21..
//  Copyright © 2015년 imac. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary *dic = [[NSDictionary alloc]initWithObjectsAndKeys:@"초이", @"이름",@"강사", @"직업", nil];
        
        NSDictionary *dic2 = [[NSDictionary alloc]initWithObjectsAndKeys:@"장동건", @"이름",@"배우", @"직업", nil];
        
        NSLog(@"이름 : %@", [dic objectForKey:@"이름"]);
        NSLog(@"직업 : %@", [dic objectForKey:@"직업"]);
        
        
        NSMutableDictionary *mdic = [[NSMutableDictionary alloc] initWithDictionary:dic2];
        [mdic setObject:@"40"  forKey:@"나이"];
        [mdic setObject:@"180" forKey:@"키"];
        
        NSLog(@"이름 : %@", [mdic objectForKey:@"이름"]);
        NSLog(@"직업 : %@", [mdic objectForKey:@"직업"]);
        NSLog(@"나이 : %@", [mdic objectForKey:@"나이"]);
        NSLog(@"키 : %@", [mdic objectForKey:@"키"]);
        
        
    }
    return 0;
}
