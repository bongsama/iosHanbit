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

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (alertView==alert1) {
        _label1.text=[NSString stringWithFormat:@"첫번째에서 발생!! buttonIndex:%d",buttonIndex];
    }else if(alertView == alert2)
    {
        _label2.text=[NSString stringWithFormat:@"두번째에서 발생!! buttonIndex:%d",buttonIndex];
    }
}


- (IBAction)button3:(id)sender {
    
    UIActionSheet *sheet=[[UIActionSheet alloc]initWithTitle:@"이미지를 저장할까요" delegate:self cancelButtonTitle:@"아니오" destructiveButtonTitle:@"저장" otherButtonTitles:@"모두저장", nil];
    [sheet showInView:self.view];
    
    
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    
//    _label3.text=[NSString stringWithFormat:@"buttonIndex:%d",buttonIndex];

    if(buttonIndex==0)
    {
        _label3.text=@"이미지 저장 완료!";
    }
    else if(buttonIndex==1)
    {
        _label3.text=@"이미지 저장 완료!";
    }else if(buttonIndex==2)
    {
        _label3.text=@"이미지 저장작업 취소 완료!!";
    }
}




@end
