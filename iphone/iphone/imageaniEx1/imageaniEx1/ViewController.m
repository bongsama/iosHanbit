//
//  ViewController.m
//  imageaniEx1
//
//  Created by bongkwan on 2014. 4. 3..
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
    index=2;
    
    _imageArray=[[NSMutableArray alloc]init];
    for(int i=0;i<6;i++)
    {
        UIImage *img=[UIImage imageNamed:[NSString stringWithFormat:@"image%d.png",i+1]];
        [_imageArray addObject:img];
    }
    
    speed=2;
    _imgView.animationImages=_imageArray;
    _imgView.animationDuration=speed;
    
    _imgView.image=[_imageArray objectAtIndex:index];
    
    _lblCount.text=[NSString stringWithFormat:@"%d/%d",index+1,[_imageArray count]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeSpeed:(id)sender {
}

- (IBAction)buttonPrev:(id)sender {
}

- (IBAction)buttonStart:(id)sender {
}

- (IBAction)buttonNext:(id)sender {
}
@end
