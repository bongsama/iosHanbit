//
//  ViewController.m
//  TimerEx
//
//  Created by bongkwan on 2014. 3. 25..
//  Copyright (c) 2014년 저녁반. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
-(void)updateTime:(NSTimer *)timer;
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

- (IBAction)buttonStart:(id)sender {
    if(myTimer != nil)
    {
        UIAlertView *dlg=[[UIAlertView alloc]initWithTitle:@"경고" message:@"Start 버튼을 이미 눌렀습니다." delegate:nil cancelButtonTitle:@"확인" otherButtonTitles:nil, nil];
        [dlg show];
    }
    
    
    //NSLog(@"%@",_picker.date);
    NSDate *date=_picker.date;
    NSCalendar *gregori=[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *comps=[gregori components:(NSHourCalendarUnit|NSMinuteCalendarUnit) fromDate:date];
    int hour=[comps hour];
    int minute=[comps minute];
    NSLog(@"hour:%d, minute:%d",hour,minute);
}

- (IBAction)buttonStop:(id)sender {
}
@end
