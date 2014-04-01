//
//  ThreeViewController.h
//  TouchEx1
//
//  Created by 저녁반 on 2014. 4. 1..
//  Copyright (c) 2014년 저녁반. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThreeViewController : UIViewController
{
    CGFloat startX;
}
@property (nonatomic,strong) UIView *leftView,*rightView;
@property (nonatomic,strong) IBOutlet UIView *currentView;

@end
