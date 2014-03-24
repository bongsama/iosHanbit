//
//  ViewController.m
//  03LavelTimer
//
//  Created by bongkwan on 2014. 3. 24..
//  Copyright (c) 2014년 저녁반. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.


    
    //라벨 생성후 현재 뷰에 추가
    _lblMessage=[[UILabel alloc]initWithFrame:CGRectMake(10, 50, 250, 30)];
    _lblMessage.text=@"Hello Iphone";
    _lblMessage.textAlignment=NSTextAlignmentCenter; //가운데 정렬
    _lblMessage.textColor=[UIColor greenColor];
    _lblMessage.backgroundColor=[UIColor blackColor];
    _lblMessage.font=[UIFont systemFontOfSize:20];
    
    //현재 뷰에 추가
    [self.view addSubview:_lblMessage];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
