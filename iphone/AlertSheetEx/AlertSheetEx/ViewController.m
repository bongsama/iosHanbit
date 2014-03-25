//
//  ViewController.m
//  AlertSheetEx
//
//  Created by bongkwan on 2014. 3. 25..
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button1:(id)sender {

}

- (IBAction)button2:(id)sender {
}

- (IBAction)button3:(id)sender {
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (alertView==alert1) {
        _label1.text=@"첫번째에서 발생!!";
    }else if(alertView == alert2)
    {
        _label2.text=@"두번째에서 발생~~";
    }
}


@end
