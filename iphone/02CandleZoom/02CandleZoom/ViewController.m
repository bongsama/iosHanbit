//
//  ViewController.m
//  02CandleZoom
//
//  Created by bongkwan on 2014. 3. 24..
//  Copyright (c) 2014년 저녁반. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imgOn=_imgOn; //버전에 따라 생략이 됨.


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //on image 생성
    _imgOn=[UIImage imageNamed:@"candle_on.jpg"];
    //이미지뷰의 기본이미지 지정
    _imageView.image=_imgOn;
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonZom:(id)sender {
    NSString *title=[sender titleForState:UIControlStateNormal];
    if([title isEqualToString:@"확대"])
    {
        [sender setTitle:@"축소" forState:UIControlStateNormal];
    }else{
        [sender setTitle:@"확대" forState:UIControlStateNormal];
    }

}
@end
