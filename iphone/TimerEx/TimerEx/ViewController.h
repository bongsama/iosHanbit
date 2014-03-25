//
//  ViewController.h
//  TimerEx
//
//  Created by bongkwan on 2014. 3. 25..
//  Copyright (c) 2014년 저녁반. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController
{
    NSTimer *myTimer;
    int cnt;
    //효과음
    SystemSoundID sori;
}
@property (weak, nonatomic) IBOutlet UIDatePicker *picker;
@property (weak, nonatomic) IBOutlet UILabel *lblTime;

- (IBAction)buttonStart:(id)sender;
- (IBAction)buttonStop:(id)sender;

@end
