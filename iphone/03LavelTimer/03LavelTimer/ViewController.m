//
//  ViewController.m
//  03LavelTimer
//
//  Created by bongkwan on 2014. 3. 24..
//  Copyright (c) 2014년 저녁반. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
-(void)updateTime;

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


    //현재 시간 구하기
    //시간라벨 생성후 추가
    _lblTime=[[UILabel alloc]initWithFrame:CGRectMake(10, 50, 250, 30)];
    _lblTime.text=@"Hello Iphone";
    _lblTime.textAlignment=NSTextAlignmentCenter; //가운데 정렬
    _lblTime.textColor=[UIColor greenColor];
    _lblTime.backgroundColor=[UIColor blackColor];
    _lblTime.font=[UIFont systemFontOfSize:20];
    
    //현재 뷰에 추가
    [self.view addSubview:_lblTime];
    
    //타이머 발생
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateTime) userInfo:nil repeats:YES];
    
    
}


-(void)updateTime
{
    static int n=0;
    NSLog(@"%d",n++);
    NSDate *date=[[NSDate alloc]init];
    NSDateFormatter *formatter=[[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss EEE"];
    _lblTime.text=[formatter stringFromDate:date];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
