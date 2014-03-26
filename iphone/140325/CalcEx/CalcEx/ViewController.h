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
- (IBAction)btnClear:(UIButton *)sender;
- (IBAction)btbSign:(UIButton *)sender;
- (IBAction)btnDel:(UIButton *)sender;
- (IBAction)btnDot:(UIButton *)sender;
- (IBAction)btnResult:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UITextField *tfOut;
@property (weak, nonatomic) NSString *op;

@end
