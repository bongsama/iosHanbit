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


- (void)updateTime:(NSTimer *)timer
{
    cnt++;
    //타이머로부터 받은 데이타(초)
    int totalsec=[[[timer userInfo] objectForKey:@"totalsec"] intValue];
    int remainsec=totalsec-cnt;
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonStart:(id)sender {
    if(myTimer != nil)
    {
        UIAlertView *dlg=[[UIAlertView alloc]initWithTitle:@"경고" message:@"Start 버튼을 이미 눌렀습니다." delegate:nil cancelButtonTitle:@"확인" otherButtonTitles:nil];
        [dlg show];
        return;
    }
    
    
    //NSLog(@"%@",_picker.date);
    NSDate *date=_picker.date;
    NSCalendar *gregori=[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *comps=[gregori components:(NSHourCalendarUnit|NSMinuteCalendarUnit) fromDate:date];
    int hour=[comps hour];
    int minute=[comps minute];
    NSLog(@"hour:%d, minute:%d",hour,minute);
    int totalsec=hour*3600+minute*60;
    //다이머를 통해서 데이타를 보낼때는 반드시 NSDictionary 타입이라야 한다.
    NSNumber *numSec=[NSNumber numberWithInt:totalsec];
    NSDictionary *dict=[NSDictionary dictionaryWithObject:numSec forKey:@"totalsec"];
    
    
    //1초마타 updateTime 메소드 호출
    myTimer=[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateTime:) userInfo:dict repeats:YES];

    
}

- (IBAction)buttonStop:(id)sender {
    [myTimer invalidate];
    _lblTime.text=@"00:00";
    myTimer=nil;
}

@end
