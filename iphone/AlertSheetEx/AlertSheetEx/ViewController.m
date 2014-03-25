//
//  ViewController.m
//  AlertSheetEx
//
//  Created by bongkwan on 2014. 3. 25..
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

- (IBAction)button1:(id)sender {
    alert1=[[UIAlertView alloc]initWithTitle:@"데이타추가" message:@"데이타를 추가할까요?" delegate:self cancelButtonTitle:@"아니오" otherButtonTitles:@"예", nil];
    [alert1 show];
}

- (IBAction)button2:(id)sender {
    alert2=[[UIAlertView alloc]initWithTitle:@"데이타삭제" message:@"데이타를 삭제할까요?" delegate:self cancelButtonTitle:@"아니오" otherButtonTitles:@"예",@"글쎄요", nil];
    [alert2 show];
}

- (IBAction)button3:(id)sender {
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (alertView==alert1) {
        _label1.text=@"첫번째에서 발생!! buttonIndex:%d",[buttonIndex ];
    }else if(alertView == alert2)
    {
        _label2.text=@"두번째에서 발생~~";
    }
}


@end
