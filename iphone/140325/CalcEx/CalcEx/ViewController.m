//
//  ViewController.m
//  CalcEx
//
//  Created by 이지 on 14. 3. 25..
//  Copyright (c) 2014년 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    BOOL    bFirst;
    BOOL    bDot;
    double  su1,su2;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    bFirst = YES;
    bDot = NO;
	// Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)btnNumeric:(UIButton *)sender {
//    버튼숫자
    NSString*   title = [sender titleForState:UIControlStateNormal];
    //출력창값
    NSMutableString *mout = [NSMutableString stringWithString:_tfOut.text];
    //출력창값이 0이거나 bFirst가  YES면 새로 찍고, 아니면 추가
    if ([mout isEqualToString:@"0"]|| bFirst){
        [mout setString:title];
        bFirst = NO;
    }else{
        [mout appendString:title];
    }
    [_tfOut setText:mout];
}

- (IBAction)btnOperator:(UIButton *)sender {
    NSString    *op = [sender titleForState:UIControlStateNormal];
    su1 = [[_tfOut text] doubleValue];
    _op = op;
    bFirst = YES;
    bDot = NO;
}

- (IBAction)btnClear:(UIButton *)sender {
    _tfOut.text = @"0";
    bFirst = YES;
    bDot = NO;
    _op = @"";
}

- (IBAction)btbSign:(UIButton *)sender {
    double su = -[_tfOut.text doubleValue];
    _tfOut.text = [NSString stringWithFormat:@"%g",su];
}

- (IBAction)btnDel:(UIButton *)sender {
    NSString *str = [_tfOut text];
    NSInteger  len = [str length];
    NSString    *substr = [str substringFromIndex:<#(NSUInteger)#>]
    
}

- (IBAction)btnDot:(UIButton *)sender {
    //출력창값
    NSMutableString *mout = [NSMutableString stringWithString:_tfOut.text];
    //출력창값이 0이거나 bFirst가  YES면 새로 찍고, 아니면 추가
    if ([mout isEqualToString:@"0"]|| !bDot){
        [mout appendString:@"."];
        bDot = YES;
    }
    [_tfOut setText:mout];
    
}

- (IBAction)btnResult:(UIButton *)sender {
    su2 = [[_tfOut text]doubleValue];
    if([_op isEqualToString:@"+"]){
        su1 +=su2;
    }else if([_op isEqualToString:@"-"]){
        su1 -=su2;
    }else if([_op isEqualToString:@"*"]){
        su1 *=su2;
    }else if([_op isEqualToString:@"/"]){
        su1 /=su2;
    }
    [_tfOut setText:[NSString stringWithFormat:@"%g",su1]];
    bFirst = YES;
    bDot = NO;
}
@end
