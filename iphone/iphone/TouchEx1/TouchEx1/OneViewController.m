//
//  OneViewController.m
//  TouchEx1
//
//  Created by 저녁반 on 2014. 4. 1..
//  Copyright (c) 2014년 저녁반. All rights reserved.
//

#import "OneViewController.h"

@interface OneViewController ()

@end

@implementation OneViewController

-(id)init
{
    if(self)
    {
        self.view.backgroundColor=[UIColor colorWithRed:1 green:1 blue:0.6 alpha:1];
    }
    return self;
}
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
}
#pragma mark -
#pragma mark Touch Method
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    _label1.text=@"터치 시작...";
    _label2.text=[NSString stringWithFormat:@"%d번 터치",
                  [[touches anyObject] tapCount]];
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    _label1.text=@"터치중...";
    
    UITouch *touch=[touches anyObject];
    if([touch view]==_imgView1)
    {
        _label2.text=@"이미지1 터치중";
        _imgView1.center=[touch locationInView:self.view];
    }else if([touch view]==_imgView2)
    {
        _label2.text=@"이미지2 터치중";
        _imgView2.center=[touch locationInView:self.view];
    }
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    _label1.text=@"터치 종료...";
}
#pragma mark -
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
