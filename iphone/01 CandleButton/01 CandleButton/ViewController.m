//
//  ViewController.m
//  01 CandleButton
//
//  Created by bongkwan on 2014. 3. 24..
//  Copyright (c) 2014년 저녁반. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonTouch:(id)sender {
    UIButton *myBtn=(UIButton *)sender;
    NSString *title=[myBtn titleForState:UIControlStateNormal];
    //제목 비교후 변경  on->off, off->on
    if([title isEqualToString:@"off"])
    {
        [myBtn setTitle:@"on" forState:UIControlStateNormal];
        _imgOff.hidden = NO;
        _imgOn.hidden = YES;
    } else {
        [myBtn setTitle:@"off" forState:UIControlStateNormal];
        _imgOff.hidden = YES;
        _imgOn.hidden = NO;
    }
}

- (IBAction)changeCandle:(UISwitch *)sender {
//    NSLog(@"%d",sender.on);
    if(sender.on==YES)
    {
        _imgOff.hidden = YES;
        _imgOn.hidden = NO;
    }else{
        _imgOff.hidden = 0;
        _imgOn.hidden = 1;
    }
}


@end
