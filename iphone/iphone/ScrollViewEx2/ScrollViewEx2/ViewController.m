//
//  ViewController.m
//  ScrollViewEx2
//
//  Created by 저녁반 on 2014. 4. 2..
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
    
    _scrollView=[[UIScrollView alloc]initWithFrame:CGRectMake(40, 50, 250, 320)];
    _contentView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 250*7, 300)];
    
    //7개의 이미지뷰를 생성하여 contentView 에 추가
    int xPos=0;
    for(int i=0;i<7;i++)
    {
        UIImage *img=[UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",i+1]];
        UIImageView *imgView=[[UIImageView alloc]initWithFrame:CGRectMake(xPos, 0, 250, 320)];
        imgView.contentMode=UIViewContentModeScaleAspectFit;
        imgView.backgroundColor=[UIColor blackColor];
        imgView.userInteractionEnabled=YES;
        imgView.image=img;
        
        [_contentView addSubview:imgView];
        xPos+=250;
    }
    
    //contentView 를 스크롤뷰에 추가
    [_scrollView addSubview:_contentView];
    _scrollView.contentSize=_contentView.frame.size;
    _scrollView.delegate=self;
    
    _scrollView.pagingEnabled=YES;
    
    //스크롤뷰를 현재뷰에 추가
    [self.view addSubview:_scrollView];
    
    CALayer *sclayer=[_scrollView layer];
    [sclayer setMasksToBounds:YES];
    [sclayer setCornerRadius:100.0];
    
    self.view.backgroundColor=[UIColor blackColor];
    //페이지 컨트롤 추가
    _pageControl=[[UIPageControl alloc]initWithFrame:CGRectMake(10, 470, 300, 40)];
    _pageControl.currentPage=0;
    _pageControl.numberOfPages=7;
   // _pageControl.backgroundColor=[UIColor blackColor];
    [_pageControl addTarget:self action:@selector(changePaging:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_pageControl];
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGFloat pageWidth=_scrollView.frame.size.width;
    _pageControl.currentPage=floor((_scrollView.contentOffset.x-pageWidth/7)/pageWidth)+1;
}
-(void)changePaging:(id)sender
{
    UIPageControl *pControl=(UIPageControl *)sender;
    [_scrollView setContentOffset:CGPointMake(pControl.currentPage*250, 0) animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end







