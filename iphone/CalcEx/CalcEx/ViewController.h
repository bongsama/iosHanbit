//
//  ViewController.h
//  CalcEx
//
//  Created by bongkwan on 2014. 3. 25..
//  Copyright (c) 2014년 저녁반. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    BOOL bFirst;
    BOOL bDot;
    double su1, su2;
}
@property (nonatomic,copy) NSString *op;


- (IBAction)btnNumeric:(UIButton *)sender;
- (IBAction)btnOperator:(UIButton *)sender;


- (IBAction)btnClear:(id)sender;
- (IBAction)btnSign:(id)sender;
- (IBAction)btnDel:(id)sender;
- (IBAction)btnResult:(id)sender;



@end
