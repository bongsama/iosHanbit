//
//  ViewController.h
//  01 CandleButton
//
//  Created by bongkwan on 2014. 3. 24..
//  Copyright (c) 2014년 저녁반. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imgOn;
@property (weak, nonatomic) IBOutlet UIImageView *imgOff;
- (IBAction)buttonTouch:(id)sender;
- (IBAction)changeCandle:(UISwitch *)sender;

@end
