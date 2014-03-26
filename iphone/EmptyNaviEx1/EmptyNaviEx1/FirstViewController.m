//
//  FirstViewController.m
//  EmptyNaviEx1
//
//  Created by 이지 on 14. 3. 26..
//  Copyright (c) 2014년 이지. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

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
    [_label setFont:[UIFont boldSystemFontOfSize:20]];
    [_label setTextAlignment:NSTextAlignmentCenter];
    
    [_label setTextColor:[UIColor blueColor]];
    [_label setText:@"아무거나"];
    
    //네비게이션
    self.navigationitem.title=@"First";
    
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
