//
//  ViewController.m
//  PickerEx1
//
//  Created by bongkwan on 2014. 4. 2..
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
    _dataArray=[[NSArray alloc]initWithObjects:@"장미꽃",@"국화꽃",@"안개꽃",@"다알리아",@"후리지아",@"채송화",@"진달래",@"개나리", nil];
    
}



#pragma mark PickerView Method
//컴포넌트
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
//각 컴포넌트당 행의 개수
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [_dataArray count];
}

//각 행에 출력할 문자열 반환
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [_dataArray objectAtIndex:row];
}

//행 선탟히 호출되는 메소드
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSString *msg=[NSString stringWithFormat:@"row: %d, data:%@",row,[_dataArray objectAtIndex:row]];
    _myLabel.text=msg;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
