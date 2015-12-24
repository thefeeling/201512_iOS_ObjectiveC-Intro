//
//  ViewController.m
//  CustomCell
//
//  Created by imac on 2015. 12. 24..
//  Copyright © 2015년 imac. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    states = [[NSArray alloc] initWithObjects:@"Alabama",@"Alaska",@"Arizona",@"Arkansas",@"California",@"Colorado",@"Connecticut",@"Delaware",@"Florida",@"Georgia",@"Hawaii",@"Idaho",@"Illinois",@"Indiana",@"Iowa",@"Kansas",@"Kentucky",@"Louisiana",@"Maine",@"Maryland",@"Massachusetts",@"Michigan",@"Minnesota",@"Mississippi",@"Missouri",@"Montana",@"Nebraska",@"Nevada",@"New Hampshire",@"New Jersey",@"New Mexico",@"New York",@"North Carolina",@"North Dakota",@"Ohio",@"Oklahoma",@"Oregon",@"Pennsylvania",@"Rhode Island",@"South Carolina",@"South Dakota",@"Tennessee",@"Texas",@"Utah",@"Vermont",@"Virginia",@"Washington",@"West Virginia",@"Wisconsin",@"Wyoming",nil];
    capitals = [[NSArray alloc] initWithObjects:@"Montgomery",@"Juneau",@"Phoenix",@"Little Rock",@"Sacramento",@"Denver",@"Hartford",@"Dover",@"Tallahassee",@"Atlanta",@"Honolulu",@"Boise",@"Springfield",@"Indianapolis",@"Des Moines",@"Topeka",@"Frankfort",@"Baton Rouge",@"Augusta",@"Annapolis",@"Boston",@"Lansing",@"St. Paul",@"Jackson",@"Jefferson City",@"Helena",@"Lincoln",@"Carson City",@"Concord",@"Trenton",@"Santa Fe",@"Albany",@"Raleigh",@"Bismarck",@"Columbus",@"Oklahoma City",@"Salem",@"Harrisburg",@"Providence",@"Columbia",@"Pierre",@"Nashville",@"Austin",@"Salt Lake City",@"Montpelier",@"Richmond",@"Olympia",@"Charleston",@"Madison",@"Cheyenne",nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return states.count;
}

/*
 CustomCell 예제처리
 
 
 
 */
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.stateLabel.text = [states objectAtIndex:indexPath.row];
    
    cell.capitalLabel.text = [capitals objectAtIndex:indexPath.row];
    
    
    return cell;
}



@end
