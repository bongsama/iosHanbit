//
//  TwoViewController.m
//  TouchEx1
//
//  Created by 저녁반 on 2014. 4. 1..
//  Copyright (c) 2014년 저녁반. All rights reserved.
//

#import "TwoViewController.h"

@interface TwoViewController ()

@end

@implementation TwoViewController
-(id)init
{
    if(self)
    {
        self.view.backgroundColor=[UIColor colorWithRed:0.6 green:1 blue:1 alpha:1];
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

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSSet *touch=[event allTouches];
    
    if([touch count]==1)
    {
        _label1.text=@"한손가락 터치중..";
    }else if([touch count]==2)
    {
        _label1.text=@"두손가락 터치중..";
        
        //두손가락의 터치 정보
        UITouch *touch1=[[touch allObjects] objectAtIndex:0];
        UITouch *touch2=[[touch allObjects] objectAtIndex:1];
        
        //두 손가락간의 거리 계산
        int x=abs((int)([touch1 locationInView:self.view].x-[touch2 locationInView:self.view].x));
        int y=abs((int)([touch1 locationInView:self.view].y-[touch2 locationInView:self.view].y));
        
        _label1.text=[NSString stringWithFormat:@"x축거리:%d,y축거리:%d",x,y];
    }
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    if([touches count]==2)
    {
        //두손가락의 터치 정보
        UITouch *touch1=[[touches allObjects] objectAtIndex:0];
        UITouch *touch2=[[touches allObjects] objectAtIndex:1];
        
        //두 손가락간의 거리 계산
        int x=abs((int)([touch1 locationInView:self.view].x-[touch2 locationInView:self.view].x));
        int y=abs((int)([touch1 locationInView:self.view].y-[touch2 locationInView:self.view].y));
        
        _label1.text=[NSString stringWithFormat:@"x축거리:%d,y축거리:%d",x,y];
    }
        
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
