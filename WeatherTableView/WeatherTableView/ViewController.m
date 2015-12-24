//
//  ViewController.m
//  WeatherTableView
//
//  Created by imac on 2015. 12. 24..
//  Copyright © 2015년 imac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSDictionary *dict1 = [[NSDictionary alloc]initWithObjectsAndKeys:@"서울"  ,@"지역" ,@"맑음"    ,@"날씨", nil];
    NSDictionary *dict2 = [[NSDictionary alloc]initWithObjectsAndKeys:@"호주"  ,@"지역" ,@"매우맑음" ,@"날씨", nil];
    NSDictionary *dict3 = [[NSDictionary alloc]initWithObjectsAndKeys:@"핀란드" ,@"지역" ,@"맑음"    ,@"날씨", nil];
    NSDictionary *dict4 = [[NSDictionary alloc]initWithObjectsAndKeys:@"프랑스" ,@"지역" ,@"비"      ,@"날씨", nil];
    NSDictionary *dict5 = [[NSDictionary alloc]initWithObjectsAndKeys:@"중국"  ,@"지역" ,@"매우맑음",@"날씨", nil];
    NSDictionary *dict6 = [[NSDictionary alloc]initWithObjectsAndKeys:@"일본"  ,@"지역" ,@"맑음",@"날씨", nil];
    NSDictionary *dict7 = [[NSDictionary alloc]initWithObjectsAndKeys:@"스페인" ,@"지역" ,@"맑음",@"날씨", nil];
    NSDictionary *dict8 = [[NSDictionary alloc]initWithObjectsAndKeys:@"독일"   ,@"지역" ,@"흐림",@"날씨", nil];
    NSDictionary *dict9 = [[NSDictionary alloc]initWithObjectsAndKeys:@"이집트"  ,@"지역" ,@"맑음",@"날씨", nil];
    NSDictionary *dict10 = [[NSDictionary alloc]initWithObjectsAndKeys:@"스위스" ,@"지역" ,@"매우맑음",@"날씨", nil];
    NSDictionary *dict11 = [[NSDictionary alloc]initWithObjectsAndKeys:@"필리핀" ,@"지역" ,@"맑음",@"날씨", nil];
    NSDictionary *dict12 = [[NSDictionary alloc]initWithObjectsAndKeys:@"스웨덴" ,@"지역" ,@"흐림",@"날씨", nil];
    NSDictionary *dict13 = [[NSDictionary alloc]initWithObjectsAndKeys:@"영국" ,@"지역" ,@"비",@"날씨", nil];
    NSDictionary *dict14 = [[NSDictionary alloc]initWithObjectsAndKeys:@"체코" ,@"지역" ,@"맑음",@"날씨", nil];
    
    
    dataList = [[NSArray alloc]initWithObjects:dict1,dict2,dict3,dict4,dict5,dict6,dict7,dict8,dict9,dict10,dict11,dict12,dict13,dict14, nil];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return dataList.count;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100.0;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    // Queue(Enqueue / Dequeue)
    // 객체 재사용
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Hello" forIndexPath:indexPath];
    
    NSDictionary *dicTemp = [dataList objectAtIndex:indexPath.row];
    cell.textLabel.text = [dicTemp objectForKey:@"지역"];
    cell.detailTextLabel.text = [dicTemp objectForKey:@"날씨"];
    
    
    if ([[dicTemp objectForKey:@"날씨"]isEqualToString:@"매우맑음"]) {
        cell.imageView.image = [UIImage imageNamed:@"verysunny.png"];
    }
    else if ([[dicTemp objectForKey:@"날씨"]isEqualToString:@"맑음"]){
        cell.imageView.image = [UIImage imageNamed:@"sunny.png"];
        
    }
    else if ([[dicTemp objectForKey:@"날씨"]isEqualToString:@"비"]){
        cell.imageView.image = [UIImage imageNamed:@"rain.png"];
        
    }
    else if ([[dicTemp objectForKey:@"날씨"]isEqualToString:@"흐림"]){
        cell.imageView.image = [UIImage imageNamed:@"cloud.png"];
        
    }else{
        cell.imageView.image = [UIImage imageNamed:@"cloudmany.png"];
    }
    return cell;
}



@end
