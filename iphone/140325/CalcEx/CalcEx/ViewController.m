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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnNumeric:(UIButton *)sender {
}

- (IBAction)btnOperator:(UIButton *)sender {
}

- (IBAction)btnClear:(UIButton *)sender {
}

- (IBAction)btbSign:(UIButton *)sender {
}

- (IBAction)btnDel:(UIButton *)sender {
}

- (IBAction)btnDot:(UIButton *)sender {
}

- (IBAction)btnResult:(UIButton *)sender {
}
@end
