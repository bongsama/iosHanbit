//
//  SecoudViewController.m
//  EmptyNaviXibEx
//
//  Created by bongkwan on 2014. 3. 27..
//  Copyright (c) 2014년 저녁반. All rights reserved.
//

#import "SecoudViewController.h"

@interface SecoudViewController ()

@end

@implementation SecoudViewController

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
    // Do any additional setup after loading the view from its nib.
    UIBarButtonItem *barBtn=[[UIBarButtonItem alloc] initWithTitle:@"Second" style:UIBarButtonItemStylePlain target:self action:@selector(nextView)];
    //네비게이션바의 우측에 바버튼 추가
    self.navigationItem.rightBarButtonItem=barBtn;
    
    self.navigationItem.title=@"소희";
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
