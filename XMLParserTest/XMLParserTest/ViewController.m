//
//  ViewController.m
//  XMLParserTest
//
//  Created by imac on 2015. 12. 28..
//  Copyright © 2015년 imac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // NSXMlParser Example Code
    NSURL *xmlUrl = [[NSURL alloc]initWithString:@"http://www.kma.go.kr/XML/weather/sfc_web_map.xml"];
    parser = [[NSXMLParser alloc]initWithContentsOfURL:xmlUrl];
    
    // 스스로에게 이벤트를 던져줘야지 사용 가능함.
    parser.delegate = self;
    [parser parse];
    
}


// 하단 매서드 구현
-(void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict{

    if ([elementName isEqualToString:@"local"]) {
        NSLog(@"didStartElement : %@",elementName);
        // NSLog(@"attributeDict : %@", attributeDict);
        
        // Dictionary 값 추출
        NSLog(@"stn_id : %@", [attributeDict objectForKey:@"stn_id"]);
        NSLog(@"desc : %@", [attributeDict objectForKey:@"desc"]);
        NSLog(@"ta : %@", [attributeDict objectForKey:@"ta"]);
    }
    
    test = 1;
}

-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string{
    if (test == 1) {
        NSLog(@"foundCharacters : %@",string);
    }
    
}

-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName{
    NSLog(@"didEndElement : %@",elementName);
    test = 2;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
