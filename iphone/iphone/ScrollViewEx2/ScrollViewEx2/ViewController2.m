//
//  ViewController2.m
//  ScrollViewEx2
//
//  Created by 저녁반 on 2014. 4. 2..
//  Copyright (c) 2014년 저녁반. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

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
    _scrollView=[[UIScrollView alloc]initWithFrame:CGRectMake(40, 50, 250, 320)];
    _contentView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 250, 300*7)];
    
    //7개의 이미지뷰를 생성하여 contentView 에 추가
    int yPos=0;
    for(int i=0;i<7;i++)
    {
        UIImage *img=[UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",i+1]];
        UIImageView *imgView=[[UIImageView alloc]initWithFrame:CGRectMake(0, yPos, 250, 320)];
        imgView.contentMode=UIViewContentModeScaleAspectFit;
        imgView.backgroundColor=[UIColor blackColor];
        imgView.userInteractionEnabled=YES;
        imgView.image=img;
        
        [_contentView addSubview:imgView];
        yPos+=320;
    }
    
    //contentView 를 스크롤뷰에 추가
    [_scrollView addSubview:_contentView];
    _scrollView.contentSize=_contentView.frame.size;
    _scrollView.pagingEnabled=YES;
    
    //스크롤뷰를 현재뷰에 추가
    [self.view addSubview:_scrollView];
    
    CALayer *sclayer=[_scrollView layer];
    [sclayer setMasksToBounds:YES];
    [sclayer setCornerRadius:100.0];
    
    self.view.backgroundColor=[UIColor yellowColor];
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
