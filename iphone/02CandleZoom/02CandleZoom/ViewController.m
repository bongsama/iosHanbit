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
    //이미지 프레임값을 얻는다
    CGRect frame=_imageView.frame;
    NSLog(@"width:%g,height:%g",frame.size.width,frame.size.height);
    
    if([title isEqualToString:@"확대"])
    {
        frame.size.width *= 2;
        frame.size.height *= 2;
        [sender setTitle:@"축소" forState:UIControlStateNormal];
    }else{
        
        frame.size.width /= 2;
        frame.size.height /= 2;
        [sender setTitle:@"확대" forState:UIControlStateNormal];
    }
    
    //애니메이션 추가
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:3.0];
    
    //이미지 사이즈 변경
    _imageView.frame=frame;
    
    //알파값 변경
    if(_imageView.alpha==1.0)
        _imageView.alpha=0.2;
    else
        _imageView.alpha=1.0;
    
    
    //애니메이션 끝
    [UIView commitAnimations];
}
@end
