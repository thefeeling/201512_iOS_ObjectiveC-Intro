//
//  Fraction.h
//  First
//
//  Created by imac on 2015. 12. 21..
//  Copyright © 2015년 imac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction:NSObject{
    int numerator;
    int denominator;
}
//-(void)setNumerator:(int)n Denominator:(int)d;
//
//-(void)setNumerator:(int)n;
//-(void)setDenominator:(int)d;
//-(void)print;
//
//// 인스턴스 변수명과 동일하게 사용하는게 표준
//-(int)denominator;
//-(int)numberator;

@property (getter=getNumerator  , setter=numerator:)   int numerator;
@property (getter=getDenominator, setter=denominator:) int denominator;

-(void)print;

@end
