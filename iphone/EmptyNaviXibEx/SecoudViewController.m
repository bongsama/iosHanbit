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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
