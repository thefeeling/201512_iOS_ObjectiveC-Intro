//
//  ViewController.h
//  finalAssignment
//
//  Created by imac on 2015. 12. 24..
//  Copyright © 2015년 imac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate, NSXMLParserDelegate>{
    
    NSMutableArray      *xmlDataArr;
    NSXMLParser         *parser;
    NSMutableDictionary *xmlDataDic;
    NSString            *tempElem;
    int                 deleteEmptyStrYn; // 개행문자 처리용 변수
    
    NSArray             *datalist;
}

@property (strong, nonatomic) IBOutlet UITableView *listTableView;


@end

