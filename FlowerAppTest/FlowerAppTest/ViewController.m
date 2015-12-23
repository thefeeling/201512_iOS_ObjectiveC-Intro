//
//  ViewController.m
//  FlowerAppTest
//
//  Created by imac on 2015. 12. 22..
//  Copyright © 2015년 imac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize flowerDetailWebView,flowerWebview,colorChoiceSegmentedControl,activityIndicatorView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
     UIWebView Hidden 속성
     */
    NSLog(@"viewDidLoad");
    
    
    flowerDetailWebView.hidden = YES;
    
    [self getFlowerAction:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





-(IBAction)getFlowerAction:(id)sender{
    /*
     loadRequest가 비동기 처리기 떄문에 실재로 애니메이션이 작동 안하는것처럼 보임
     async
     */
     
    [activityIndicatorView startAnimating];
    
    NSString *color = [colorChoiceSegmentedControl titleForSegmentAtIndex:colorChoiceSegmentedControl.selectedSegmentIndex];
    
    int sessionId = random()%10000;

    
    /*
     Detail Information : http://www.floraphotographs.com/detailiphone.php?session=1111
     */
    
    NSString *imageUrlString = [[NSString alloc]initWithFormat:@"http://www.floraphotographs.com/showrandomiphone.php?color=%@&session=%i" ,color,sessionId];
    
    NSString *detailUrlString = [[NSString alloc]initWithFormat:@"http://www.floraphotographs.com/detailiphone.php?session=%i" ,sessionId];
    
    
    
    
    NSURL *imageUrl = [[NSURL alloc]initWithString:imageUrlString];
    NSURL *detailUrl = [[NSURL alloc]initWithString:detailUrlString];
    

    [flowerWebview loadRequest:[NSURLRequest requestWithURL:imageUrl]];
    [flowerDetailWebView loadRequest:[NSURLRequest requestWithURL:detailUrl]];
    
    //[activityIndicatorView stopAnimating];
}
// id는 일종의 제네릭
-(IBAction)toggleAction:(id)sender{
    
    /*
     Sender의 정체는 이벤트를 발생시키는 녀석
     : 현재 상태를 가지고 있는
     */
    
    /*
     스위치 객체가 넘어오기 떄문에 하단에 if~else 코드 주석처리
     */
    flowerDetailWebView.hidden = [sender isOn];
    
    NSLog(@"%@", [sender description]);
    
    
    /*
    if(flowerDetailWebView.hidden == YES){
        flowerDetailWebView.hidden = NO;
    }else{
        flowerDetailWebView.hidden = YES;
    }
     */
    
}

-(void)webViewDidStartLoad:(UIWebView *)webView{
        [activityIndicatorView startAnimating];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
        [activityIndicatorView stopAnimating];
}





@end
