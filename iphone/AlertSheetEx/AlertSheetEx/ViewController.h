//
//  ViewController.h
//  AlertSheetEx
//
//  Created by bongkwan on 2014. 3. 25..
//  Copyright (c) 2014년 저녁반. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate, UIActionSheetDelegate> //프로토콜 임.두
{
    UIAlertView *alert1, *alert2;
    
}
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UILabel *label3;
- (IBAction)button1:(id)sender;
- (IBAction)button2:(id)sender;
- (IBAction)button3:(id)sender;


@end
