//
//  ViewController.h
//  ScrollViewEx2
//
//  Created by 저녁반 on 2014. 4. 2..
//  Copyright (c) 2014년 저녁반. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface ViewController : UIViewController<UIScrollViewDelegate>

@property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIView *contentView;
@property (nonatomic,strong) UIPageControl *pageControl;
@end
