//
//  main.m
//  First
//
//  Created by imac on 2015. 12. 21..
//  Copyright © 2015년 imac. All rights reserved.
//
// Auto Reference Counting???


#import <Foundation/Foundation.h>
#import "Fraction.h"

/*
 
 Class 선언부
  - Member Variable
  - Member Method
    -(void)set.... => Instance Method
    +(void)set.... => Class Method
 */



/*
 클래스 구현체
 */







int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //1)
        // Fraction *frac = [[Fraction alloc]init];
        
        
        //2)
        Fraction *frac = [Fraction alloc];
        frac = [frac init];
        
        frac.numerator = 1;
        frac.denominator = 3;
        //Fraction *frac = [Fraction new]; // 동적할당(잘안쓴다고 함 => new 명령어를 잘안씀)
        
        //[frac setNumerator:1];
        //[frac setDenominator:3];
        //[frac setNumerator:1 Denominator:3];
        
        //[frac print];
        
        
        // [Receiver Message]
        
        
        /*
        Fraction *frac;
        frac = [Fraction alloc];
        frac = [frac init];
        */
        /*
         Fraction *frac = [Fraction new]
         */
        
        
        //int numerator = 1;
        //int denominator = 3;
        // insert code here...
        //NSLog(@"The Fraction is : %i/%i",[frac getNumerator],[frac getDenominator]);
        
        NSLog(@"The Fraction is : %i/%i",frac.numerator,frac.denominator);
    }
    return 0;
}