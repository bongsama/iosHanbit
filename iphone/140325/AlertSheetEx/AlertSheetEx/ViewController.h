//
//  ViewController.h
//  AlertSheetEx
//
//  Created by 이지 on 14. 3. 25..
//  Copyright (c) 2014년 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate,UIActionSheetDelegate>{
    UIAlertView *alert1, *alert2;
}
@property (weak, nonatomic) IBOutlet UILabel *Label1;
@property (weak, nonatomic) IBOutlet UILabel *Label2;
@property (weak, nonatomic) IBOutlet UILabel *Label3;
- (IBAction)Button1:(id)sender;
- (IBAction)Button2:(id)sender;
- (IBAction)Button3:(id)sender;

@end
