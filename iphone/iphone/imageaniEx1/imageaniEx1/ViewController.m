//
//  ViewController.m
//  ImageAniEx1
//
//  Created by 저녁반 on 2014. 4. 3..
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
    index=2;
    
    _imageArray=[[NSMutableArray alloc]init];
    for(int i=0;i<6;i++)
    {
        UIImage *img=[UIImage imageNamed:[NSString stringWithFormat:@"image%d.png",i+1]];
        [_imageArray addObject:img];
    }
    
    speed=2;
    _imgView.animationImages=_imageArray;
    _imgView.animationDuration=speed;
    
    _imgView.image=[_imageArray objectAtIndex:index];
    
    _lblCount.text=[NSString stringWithFormat:@"%d/%d",
                    index+1,[_imageArray count]];
    
    //버튼 비활성화시 이미지와 글자색 변경
    [_prev setBackgroundImage:[UIImage imageNamed:@"butbackgraydisabled.png"] forState:UIControlStateDisabled];
    [_next setBackgroundImage:[UIImage imageNamed:@"butbackgraydisabled.png"] forState:UIControlStateDisabled];
    [_prev setTitleColor:[UIColor grayColor] forState:UIControlStateDisabled];
    [_next setTitleColor:[UIColor grayColor] forState:UIControlStateDisabled];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeSpeed:(id)sender {
    UISlider *slider=(UISlider *)sender;
    speed=[slider value];
    _lblCount.text=[NSString stringWithFormat:@"Speed:%3.1f",speed];
    if([_imgView isAnimating])
    {
        _imgView.animationDuration=speed;
        [_imgView startAnimating];
    }
}

- (IBAction)buttonPrev:(id)sender {
    
    index--;
    if(index<[_imageArray count])
    {
        _next.enabled=YES;
    }
    if(index<0)
    {
        UIAlertView *dlg=[[UIAlertView alloc]initWithTitle:@"경고" message:@"더이상 이미지가 없습니다" delegate:nil cancelButtonTitle:@"확인" otherButtonTitles: nil];
        [dlg show];
        index=0;
        _prev.enabled=NO;
        return;
    }
    _lblCount.text=[NSString stringWithFormat:@"%d/%d",
                    index+1,[_imageArray count]];
    _imgView.image=[_imageArray objectAtIndex:index];
    
}

- (IBAction)buttonStart:(id)sender {
    UIButton *myBtn=(UIButton *)sender;
    if([_imgView isAnimating])
    {
        [_imgView stopAnimating];
        [myBtn setTitle:@"시작" forState:UIControlStateNormal];
    }else{
        _imgView.animationDuration=speed;
        _imgView.animationRepeatCount=0;//무한반복
        [_imgView startAnimating];
        [myBtn setTitle:@"중지" forState:UIControlStateNormal];
        _lblCount.text=[NSString stringWithFormat:@"Speed:%3.1f",speed];
    }
}

- (IBAction)buttonNext:(id)sender {
    index++;
    if(index>0)
    {
        _prev.enabled=YES;
    }
    if(index>=[_imageArray count])
    {
        UIAlertView *dlg=[[UIAlertView alloc]initWithTitle:@"경고" message:@"더이상 이미지가 없습니다" delegate:nil cancelButtonTitle:@"확인" otherButtonTitles: nil];
        [dlg show];
        index=[_imageArray count]-1;
        _next.enabled=NO;
        return;
    }
    _lblCount.text=[NSString stringWithFormat:@"%d/%d",
                    index+1,[_imageArray count]];
    _imgView.image=[_imageArray objectAtIndex:index];
}
@end









