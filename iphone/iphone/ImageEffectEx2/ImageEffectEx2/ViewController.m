//
//  ViewController.m
//  ImageEffectEx2
//
//  Created by 저녁반 on 2014. 3. 31..
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
    CGRect frame=[[UIScreen mainScreen] bounds];
    NSLog(@"width:%g,height:%g",frame.size.width,frame.size.height);
    
    flag=YES;
    flag1=YES;
    flag2=YES;
    
    frame.size.height-=40;
    _imgView=[[UIImageView alloc]initWithFrame:frame];
    _imgView.image=[UIImage imageNamed:@"10.JPG"];
    _imgView.alpha=flag;
    [self.view addSubview:_imgView];
    
    self.imgView1=_imgView;
    
    _imgView2=[[UIImageView alloc]initWithFrame:frame];
    _imgView2.image=[UIImage imageNamed:@"13.JPG"];
    _imgView2.alpha=flag;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)fade:(id)sender {
    
    flag=!flag;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:2];
    
    _imgView.alpha=flag;
    
    [UIView commitAnimations];
}

- (IBAction)shrink:(id)sender {
    //일단 이미지가 보이도록 알파값 조절
    flag=YES;
    _imgView.alpha=flag;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:2];
    //[UIView setAnimationCurve:UIViewAnimationCurveLinear];
    if(flag1)
        _imgView.frame=CGRectMake(100, 150, 200, 250);
    else
    {
        CGRect frame=[[UIScreen mainScreen] bounds];
        frame.size.height-=40;
        _imgView.frame=frame;
    }
    
    [UIView commitAnimations];
    flag1=!flag1;
}

- (IBAction)flip:(id)sender {
    flag=YES;
    _imgView.alpha=flag;
    
    CGRect frame=[[UIScreen mainScreen] bounds];
    frame.size.height-=40;
    _imgView.frame=frame;
    flag1=YES;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:2];
    if(flag2)
    {
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:YES];
        [_imgView1 removeFromSuperview];
        [self.view addSubview:_imgView2];
        _imgView=_imgView2;
    }else
    {
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];
        [_imgView2 removeFromSuperview];
        [self.view addSubview:_imgView1];
        _imgView=_imgView1;
    }
    flag2=!flag2;
    
    [UIView commitAnimations];

}

- (IBAction)curl:(id)sender {
    flag=YES;
    _imgView.alpha=flag;

    CGRect frame=[[UIScreen mainScreen] bounds];
    frame.size.height-=40;
    _imgView.frame=frame;
    flag1=YES;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:2];
    if(flag2)
    {
        [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:self.view cache:YES];
        [_imgView1 removeFromSuperview];
        [self.view addSubview:_imgView2];
        _imgView=_imgView2;
    }else
    {
        [UIView setAnimationTransition:UIViewAnimationTransitionCurlDown forView:self.view cache:YES];
        [_imgView2 removeFromSuperview];
        [self.view addSubview:_imgView1];
        _imgView=_imgView1;
    }
    flag2=!flag2;
    
    [UIView commitAnimations];
}
@end
