//
//  AppDelegate.m
//  WindowSubViewEx2
//
//  Created by 저녁반 on 2014. 4. 1..
//  Copyright (c) 2014년 저녁반. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //버튼 4개 추가
    _btnHome=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btnHome.frame=CGRectMake(10, 430, 70, 30);
    _btnHome.backgroundColor=[UIColor greenColor];
    [_btnHome setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [_btnHome setTitle:@"Home" forState:UIControlStateNormal];
    
    [_btnHome addTarget:self action:@selector(buttonHome) forControlEvents:UIControlEventTouchUpInside];
    [_window addSubview:_btnHome];
    
    _btnFirst=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btnFirst.frame=CGRectMake(90, 430, 70, 30);
    _btnFirst.backgroundColor=[UIColor greenColor];
    [_btnFirst setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [_btnFirst setTitle:@"First" forState:UIControlStateNormal];
    [_btnFirst addTarget:self action:@selector(buttonFirst) forControlEvents:UIControlEventTouchUpInside];
    [_window addSubview:_btnFirst];
    
    _btnSecond=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btnSecond.frame=CGRectMake(170, 430, 70, 30);
    _btnSecond.backgroundColor=[UIColor greenColor];
    [_btnSecond setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [_btnSecond setTitle:@"Second" forState:UIControlStateNormal];
    [_btnSecond addTarget:self action:@selector(buttonSecond) forControlEvents:UIControlEventTouchUpInside];
    [_window addSubview:_btnSecond];
    
    _btnThird=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btnThird.frame=CGRectMake(250, 430, 70, 30);
    _btnThird.backgroundColor=[UIColor greenColor];
    [_btnThird setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [_btnThird setTitle:@"Third" forState:UIControlStateNormal];
    [_btnThird addTarget:self action:@selector(buttonThird) forControlEvents:UIControlEventTouchUpInside];
    [_window addSubview:_btnThird];
    
    _imgView1=[[UIImageView alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    _imgView1.image=[UIImage imageNamed:@"9.JPG"];
    
    _imgView2=[[UIImageView alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    _imgView2.image=[UIImage imageNamed:@"10.JPG"];
    
    _imgView3=[[UIImageView alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    _imgView3.image=[UIImage imageNamed:@"26.JPG"];
    return YES;
}

#pragma mark -
#pragma  mark Button Method
-(void)buttonHome
{
    
    NSLog(@"1");

    
    
    switch (index) {
        case 1:
            [_imgView1 removeFromSuperview];
            break;
        case 2:
            [_imgView1 removeFromSuperview];
            break;
        case 3:
            [_imgView1 removeFromSuperview];
            break;
        default:
            break;
    }
    
    
    
    //3개의 이미지 뷰를 슈퍼뷰로부터 제거
//    [_imgView1 removeFromSuperview];
//    [_imgView2 removeFromSuperview];
//    [_imgView3 removeFromSuperview];
}

-(void)buttonFirst
{
   NSLog(@"2");
    
    index=1;
    //[_window addSubview:_imgView];
    [self buttonHome];
    [_window insertSubview:_imgView1 atIndex:0];

}

-(void)buttonSecond
{
    NSLog(@"3");
    [self buttonHome];
    [_window insertSubview:_imgView2 atIndex:0];
    index=2;
}

-(void)buttonThird
{
    [self buttonHome];
    NSLog(@"4");
    [_window insertSubview:_imgView3 atIndex:0];
    index=3;
}
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
