//
//  ViewController.m
//  AlertSheetEx
//
//  Created by 이지 on 14. 3. 25..
//  Copyright (c) 2014년 ___FULLUSERNAME___. All rights reserved.
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

- (IBAction)Button1:(id)sender {
    alert1 = [[UIAlertView alloc]initWithTitle:@"data add" message:@"data add?" delegate:self cancelButtonTitle:@"NO" otherButtonTitles:@"YES",nil];
    [alert1 show];
}

- (IBAction)Button2:(id)sender {
    alert2 = [[UIAlertView alloc]initWithTitle:@"data del" message:@"data del?" delegate:self cancelButtonTitle:@"NO" otherButtonTitles:@"YES",@"SOSO",nil];
    [alert2 show];
}


-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    if(alertView == alert1){
        [_Label1 setText:[NSString stringWithFormat:@"첫번쨰에서 발생!! buttonIndex:%d",buttonIndex]];
    }else if(alertView == alert2){
        [_Label2 setText:[NSString stringWithFormat:@"두번쨰에서 발생!! buttonIndex:%d",buttonIndex]];
    }
    
}

- (IBAction)Button3:(id)sender {
    UIActionSheet *sheet = [[UIActionSheet alloc]initWithTitle:@"image save?" delegate:self cancelButtonTitle:@"NO" destructiveButtonTitle:@"Save" otherButtonTitles:@"All Save", nil];
    [sheet showInView:self.view];
}
-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
//    [_Label3 setText:[NSString stringWithFormat:@"buttonIndex: %d",buttonIndex]];
    if(buttonIndex == 0 ){
        [_Label3 setText:@"image Save Sueseeded"];
    }else if(buttonIndex == 1){
        [_Label3 setText:@"All image Save Sueseeded"];
    }else if(buttonIndex == 2){
        
        [_Label3 setText:@"image Save Failde"];
    }
}
@end
