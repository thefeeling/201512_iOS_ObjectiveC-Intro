//
//  UrlHistory.h
//  webViewBrowserTest
//
//  Created by  Choi Kyung Seok on 2015. 12. 22..
//  Copyright © 2015년 Choi Kyung Seok. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UrlHistory : NSObject{
    NSMutableArray *urlArr;
}

-(void)addUrl:(NSString *)url;


@end
