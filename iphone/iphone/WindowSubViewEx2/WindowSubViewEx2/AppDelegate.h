//
//  AppDelegate.h
//  WindowSubViewEx2
//
//  Created by 저녁반 on 2014. 4. 1..
//  Copyright (c) 2014년 저녁반. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    NSInteger index;
}
@property (strong, nonatomic) UIWindow *window;
@property (strong,nonatomic) UIButton *btnHome,*btnFirst,*btnSecond,*btnThird;
@property (strong,nonatomic) UIImageView *imgView1,*imgView2,*imgView3;
-(void)buttonHome;
-(void)buttonFirst;
-(void)buttonSecond;
-(void)buttonThird;

@end
