//
//  ViewController.m
//  TimerEx
//
//  Created by 이지 on 14. 3. 25..
//  Copyright (c) 2014년 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (void)updateTime:(NSTimer*)timer;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString* path = [[NSBundle mainBundle] pathForResource:@"guitar_new_sms_2010" ofType:@"aif"];
    NSURL* url = [NSURL fileURLWithPath:path];
    // SoundID 생성
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)url, &sori);
    
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonStart:(UIButton *)sender {
    if(myTimer != nil){
        UIAlertView *dlg =[[UIAlertView alloc]initWithTitle:@"Error" message:@"Start 중복" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [dlg show];
        return;
    }
    cnt = 0;
    NSDate *date = _picker.date;
    NSCalendar *gregori = [[NSCalendar alloc]initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *comps = [gregori components:(NSHourCalendarUnit | NSMinuteCalendarUnit) fromDate:date];
    NSLog(@"%@",comps);
    int hour = [comps hour];
    int minute = [comps minute];//
    int totalsec = hour * 3600 + minute * 60;
    //타이머를 통해 데이터를 보낼때는 반드시 NSDictionary 타입이라 한다.
    NSNumber *numSec = [NSNumber numberWithInt:totalsec];
    NSDictionary *dict = [NSDictionary dictionaryWithObject:numSec forKey:@"totalsec"];
    
    //1초 마다 updatetime메소드 호출
    myTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateTime:) userInfo:dict repeats:YES];
}

- (IBAction)buttonStop:(UIButton *)sender {
    [myTimer invalidate];//타이머 무효화
    [_lblTime setText:@"00:00"];
    myTimer = nil;
}
//1초마다 호출될 메소드
-(void)updateTime:(NSTimer*)timer{
    cnt++;
    //타이머로 부터 받은 데이터(초)
    int totalsec = [[[timer userInfo] objectForKey:@"totalsec"]intValue];
    int remainsec = totalsec - cnt;
    if(remainsec >= 3600){
        [_lblTime setText:[NSString stringWithFormat:@"%2d:%02d:%02d",remainsec/3600,(remainsec%3600)/60,remainsec%60]];
    }else{
        [_lblTime setText:[NSString stringWithFormat:@"%2d:%02d",remainsec/60,remainsec%60]];
    }
    if(remainsec == 0){
        //효과음 재생
        AudioServicesPlayAlertSound(sori);
        
        [_lblTime setText:@"Time Over"];
        [myTimer invalidate];
        myTimer = nil;
    }

}
@end
