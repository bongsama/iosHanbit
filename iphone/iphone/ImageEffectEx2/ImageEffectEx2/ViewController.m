//
//  ViewController.m
//  ImageEffectEx2
//
//  Created by bongkwan on 2014. 3. 31..
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
    CGRect frame=[[UIScreen mainScreen] bounds];
    
    flag=1;
    frame.size.height-=40;
    _imgView = [[[UIImageView alloc]] initWithFrame:frame];
    _imgView.image=[UIImage imageNamed:@"10.JPG"];
    
    
    [self.view addSubview:_imgView];
    

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)fade:(id)sender {
}

- (IBAction)shrink:(id)sender {
}

- (IBAction)flip:(id)sender {
}

- (IBAction)curl:(id)sender {
}
@end
