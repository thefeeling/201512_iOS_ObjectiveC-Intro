//
//  ViewController.m
//  TableViewTest
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
    // Do any additional setup after loading the view, typically from a nib.
    
    actor = [[NSArray alloc]initWithObjects:@"송강호",@"유아인",@"한석규",@"장동건",@"안성기",@"원빈",@"현빈",@"정우성",@"안성기",@"안재욱",@"조인성",@"이병헌",@"차승원", nil];
    actress = [[NSArray alloc]initWithObjects:@"김혜수",@"송혜교",@"송윤아",@"박보영",@"한가인",@"한예슬",@"손예진",@"한효주",@"김태희",@"수지",@"설현", nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if(section == 0){
        return @"남자배우";
    }else{
        return @"여자배우";
    }
}




// 로우 값 설정
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) {
        return actor.count;
    }else{
        return actress.count;
    }
}


// 셀 내용
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Hello" forIndexPath:indexPath];
    
    switch (indexPath.section) {
        case 0:
            cell.textLabel.text = [actor objectAtIndex:indexPath.row];
            break;
        case 1:
            [[cell textLabel]setText:[actress objectAtIndex:indexPath.row]];
            break;
        default:
            cell.textLabel.text = @"Unknown";
            break;
    }
    
    return cell;
}

// Section 숫자
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

@end
