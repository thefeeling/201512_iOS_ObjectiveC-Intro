//
//  ViewController.m
//  finalAssignment
//
//  Created by imac on 2015. 12. 24..
//  Copyright © 2015년 imac. All rights reserved.
//

#import "ViewController.h"
#import "CustomImageCell.h"
#import "DetailViewController.h"

@interface ViewController ()

@end

@implementation ViewController



@synthesize listTableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDictionary *dict1 =[[NSDictionary alloc] initWithObjectsAndKeys:@"헤드폰",@"ProductName",@"깨끗",@"State",@"2011-9-11",@"Date",@"123-4567-890",@"Contact",@"2000원",@"Value", nil];
    NSDictionary *dict2 =[[NSDictionary alloc] initWithObjectsAndKeys:@"카메라",@"ProductName",@"더러움",@"State",@"2001-1-10",@"Date",@"010-238-0099",@"Contact",@"3000원",@"Value", nil];
    NSDictionary *dict3 =[[NSDictionary alloc] initWithObjectsAndKeys:@"돋보기",@"ProductName",@"새거",@"State",@"2009-2-9",@"Date",@"010-2341-2222",@"Contact",@"20000원",@"Value", nil];
    NSDictionary *dict4 =[[NSDictionary alloc] initWithObjectsAndKeys:@"자물쇠",@"ProductName",@"A급",@"State",@"2011-3-5",@"Date",@"123-4567-890",@"Contact",@"222200원",@"Value", nil];
    NSDictionary *dict5 =[[NSDictionary alloc] initWithObjectsAndKeys:@"집",@"ProductName",@"B급",@"State",@"2011-4-3",@"Date",@"12-3456-7890",@"Contact",@"23300원",@"Value", nil];
    NSDictionary *dict6 =[[NSDictionary alloc] initWithObjectsAndKeys:@"iPod",@"ProductName",@"C급",@"State",@"2011-5-9",@"Date",@"1234567890",@"Contact",@"872000원",@"Value", nil];
    NSDictionary *dict7 =[[NSDictionary alloc] initWithObjectsAndKeys:@"편지봉투",@"ProductName",@"D급",@"State",@"2011-6-4",@"Date",@"1234567890",@"Contact",@"992000원",@"Value", nil];
    NSDictionary *dict8 =[[NSDictionary alloc] initWithObjectsAndKeys:@"핸드폰",@"ProductName",@"깨끗",@"State",@"2011-7-5",@"Date",@"1234567890",@"Contact",@"99000원",@"Value", nil];
    NSDictionary *dict9 =[[NSDictionary alloc] initWithObjectsAndKeys:@"집",@"ProductName",@"더러움",@"State",@"2011-8-7",@"Date",@"1234567890",@"Contact",@"112000원",@"Value", nil];
    NSDictionary *dict10 =[[NSDictionary alloc] initWithObjectsAndKeys:@"자물쇠",@"ProductName",@"새거",@"State",@"2011-9-12",@"Date",@"1234567890",@"Contact",@"7262000원",@"Value", nil];
    NSDictionary *dict11 =[[NSDictionary alloc] initWithObjectsAndKeys:@"핸드폰",@"ProductName",@"A급",@"State",@"2011-10-21",@"Date",@"1234567890",@"Contact",@"9022000원",@"Value", nil];
    
    NSDictionary *dict12 =[[NSDictionary alloc] initWithObjectsAndKeys:@"돋보기",@"ProductName",@"B급",@"State",@"2011-11-2",@"Date",@"1234567890",@"Contact",@"342000원",@"Value", nil];
    
    NSDictionary *dict13 =[[NSDictionary alloc] initWithObjectsAndKeys:@"헤드폰",@"ProductName",@"C급",@"State",@"2011-12-1",@"Date",@"1234567890",@"Contact",@"562000원",@"Value", nil];
    
    NSDictionary *dict14 =[[NSDictionary alloc] initWithObjectsAndKeys:@"iPod",@"ProductName",@"D급",@"State",@"2011-8-11",@"Date",@"1234567890",@"Contact",@"762000원",@"Value", nil];
    
    NSDictionary *dict15 =[[NSDictionary alloc] initWithObjectsAndKeys:@"카메라",@"ProductName",@"깨끗",@"State",@"2011-6-1",@"Date",@"1234567890",@"Contact",@"882000원",@"Value", nil];
    
    
    datalist = [[NSArray alloc]initWithObjects:dict1,dict2,dict3,dict4,dict5,dict6,dict7,dict8,dict9,dict10,dict11,dict12,dict13,dict14,dict15, nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CustomImageCell * cell = [tableView dequeueReusableCellWithIdentifier:@"ImageCell" forIndexPath:indexPath];
    
    NSDictionary *tempDic = [datalist objectAtIndex:indexPath.row];
    
    
    NSString *tempImgStr = [tempDic objectForKey:@"ProductName"];
    
    
    if([tempImgStr isEqualToString:@"헤드폰"]){
        cell.goodsImageView.image = [UIImage imageNamed:@"headphone.png"];
    }
    else if([tempImgStr isEqualToString:@"iPod"]){
        cell.goodsImageView.image = [UIImage imageNamed:@"ipod.png"];
    }
    else if([tempImgStr isEqualToString:@"카메라"]){
        cell.goodsImageView.image = [UIImage imageNamed:@"camera.png"];
    }
    else if([tempImgStr isEqualToString:@"돋보기"]){
        cell.goodsImageView.image = [UIImage imageNamed:@"magnifier.png"];
    }
    else if([tempImgStr isEqualToString:@"자물쇠"]){
        cell.goodsImageView.image = [UIImage imageNamed:@"lock.png"];
    }
    else if([tempImgStr isEqualToString:@"집"]){
        cell.goodsImageView.image = [UIImage imageNamed:@"house.png"];
    }
    else if([tempImgStr isEqualToString:@"편지봉투"]){
        cell.goodsImageView.image = [UIImage imageNamed:@"letter.png"];
    }
    else if([tempImgStr isEqualToString:@"핸드폰"]){
        cell.goodsImageView.image = [UIImage imageNamed:@"cellular.png"];
    }
    else{
        cell.goodsImageView.image = [UIImage imageNamed:@"lock.png"];
    }
    
    // Label 크기에 따라서 출력이 안될수있음.
    // 라벨 크기 조절해야 함.
    cell.goodsDateLabel.text    = [tempDic objectForKey:@"Date"];
    cell.goodsQualityLabel.text = [tempDic objectForKey:@"State"];
    cell.goodsNameLabel.text = [tempDic objectForKey:@"ProductName"];
    
    
    return cell;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return datalist.count;
}


// DetailViewController에 데이터를 넘겨주는 처리를 함.
// 세그웨이가 넘어오는 매소드
//
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier]isEqualToString:@"goodsShowDetail"]) {
        // 선택된 로우의 IndexPath값을 가져옴
        NSIndexPath *indexPath = [self.listTableView indexPathForSelectedRow];
        
        //
        [[segue destinationViewController]setGoodsDetailDic:[datalist objectAtIndex:indexPath.row]];
    }
}



@end
