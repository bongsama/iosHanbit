//
//  ViewController.h
//  CalcEx
//
//  Created by 이지 on 14. 3. 25..
//  Copyright (c) 2014년 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)btnNumeric:(UIButton *)sender;
- (IBAction)btnOperator:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *btnClear;
@property (weak, nonatomic) IBOutlet UIButton *btbSign;
@property (weak, nonatomic) IBOutlet UIButton *btnDel;
@property (weak, nonatomic) IBOutlet UIButton *btnDot;
@property (weak, nonatomic) IBOutlet UIButton *btnResult;

@end
