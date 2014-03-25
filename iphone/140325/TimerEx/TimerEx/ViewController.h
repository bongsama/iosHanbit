//
//  ViewController.h
//  TimerEx
//
//  Created by 이지 on 14. 3. 25..
//  Copyright (c) 2014년 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
@interface ViewController : UIViewController{
    NSTimer                 *myTimer;
    int                     cnt;
    
    //효과음
    SystemSoundID sori;
}
@property (weak, nonatomic) IBOutlet UIDatePicker   *picker;
@property (weak, nonatomic) IBOutlet UILabel        *lblTime;
- (IBAction)buttonStart:(UIButton *)sender;
- (IBAction)buttonStop:(UIButton *)sender;

@end
