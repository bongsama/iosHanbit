//
//  ViewController.m
//  CalcEx
//
//  Created by bongkwan on 2014. 3. 25..
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
    //초기값
    bFirst=1;
    bDot=0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnOperator:(UIButton *)sender {
    //버튼 연산자
    NSString *op=[sender titleForState:UIControlStateNormal];
    self.op=op;
    bFirst=1;//연산자 누른후 첫숫자는 새롭게 찍기
}

- (IBAction)btnNumeric:(UIButton *)sender {
    //버튼 숫자
    NSString *title=[sender titleForState:UIControlStateNormal];
    NSMutableString *mout=[NSMutableString stringWithString:_tfOut.text];
    if([mout isEqualToString:@"0"] || bFirst)
    {
        [mout setString:title];
        bFirst=NO;
    }else{
        [mout appendString:title];
    }
    
    //다시 출력창에 출력
    _tfOut.text=mout;
}

- (IBAction)btnClear:(id)sender {
    bFirst=1;
    
    
    
    
}

- (IBAction)btnSign:(id)sender {
}

- (IBAction)btnDel:(id)sender {
}

- (IBAction)btnResult:(id)sender {
}
@end