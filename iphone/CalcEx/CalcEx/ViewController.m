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
    su1=[_tfOut.text doubleValue];
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
    bDot=NO;
}

- (IBAction)btnClear:(id)sender {
    bFirst=1;
    _tfOut.text=@"0";
    bFirst=YES;
    bDot=NO;
    self.op=@"";
}

- (IBAction)btnSign:(id)sender {
    double su=[_tfOut.text doubleValue]*-1;
    _tfOut.text=[NSString stringWithFormat:@"%g",su];
}

- (IBAction)btnDel:(id)sender {
    NSString *str=_tfOut.text;
    NSInteger len=[str length];
    //추출전 마지막 값이 도트면 bDot를 NO로
    
    
    //전체길이에서 1개를 뺀 숫자를 추출
    NSString *substr=[str substringToIndex:len-1];
    //추출된 숫자의 길이가 0 이면 숫자0추출
    if([substr length]==0)
        substr=@"0";
    
    //다시 출력
    _tfOut.text=substr;
}

- (IBAction)btnResult:(id)sender {
    su2=[_tfOut.text doubleValue];
    
    if([_op isEqualToString:@"+"])
        su1+=su2;
    else if([_op isEqualToString:@"-"])
        su1-=su2;
    else if([_op isEqualToString:@"*"])
        su1*=su2;
    else if([_op isEqualToString:@"/"])
        su1/=su2;

    
    _tfOut.text=[NSString stringWithFormat:@"%g",su1];
    
    
    bFirst=1;
    bDot=0;
    
}

- (IBAction)btDot:(id)sender {
    NSMutableString *mout=[NSMutableString stringWithString:_tfOut.text];
    if(!bDot)
    {
        [mout appendString:@"."];
        bDot=YES;
        _tfOut.text=mout;
    }
}
@end
