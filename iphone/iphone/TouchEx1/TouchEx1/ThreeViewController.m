//
//  ThreeViewController.m
//  TouchEx1
//
//  Created by 저녁반 on 2014. 4. 1..
//  Copyright (c) 2014년 저녁반. All rights reserved.
//

#import "ThreeViewController.h"

@interface ThreeViewController ()

@end

@implementation ThreeViewController
-(id)init
{
    if(self)
    {
        self.view.backgroundColor=[UIColor colorWithRed:1 green:0.6 blue:1 alpha:1];
    }
    return self;
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CGRect frame=[[UIScreen mainScreen] bounds];
    
    _leftView=[[UIView alloc]initWithFrame:frame];
    _leftView.backgroundColor=[UIColor colorWithRed:1 green:1 blue:0.3 alpha:1];
    _rightView=[[UIView alloc]initWithFrame:frame];
    _rightView.backgroundColor=[UIColor colorWithRed:1 green:0.5 blue:1 alpha:1];
    
    [_currentView addSubview:_leftView];
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch=[touches anyObject];
    startX=[touch locationInView:self.view].x;
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch=[touches anyObject];
    CGFloat currentX=[touch locationInView:self.view].x;
    
    CGFloat diff=fabsf(startX-currentX);
    NSLog(@"x축간 거리 : %g",diff);
    
    if(diff<150)
        return;
    //거리가 150 이상이면 뷰전환
    NSArray *views=[_currentView subviews];
    NSLog(@"count:%d",[views count]);
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    if([views objectAtIndex:2]==_leftView)
    {
        NSLog(@"leftview");
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:YES];
        //leftview 제거
        [_leftView removeFromSuperview];
        //rightview 추가
        [_currentView addSubview:_rightView];
    }else
    {
        NSLog(@"rightview");
       [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];
        //rightview 제거
        [_rightView removeFromSuperview];
        //leftview 추가
        [_currentView addSubview:_leftView];
    }
    [UIView commitAnimations];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
