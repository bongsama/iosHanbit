//
//  TwoViewController.m
//  PickerEx1
//
//  Created by bongkwan on 2014. 4. 2..
//  Copyright (c) 2014년 저녁반. All rights reserved.
//

#import "TwoViewController.h"

@interface TwoViewController ()

@end

@implementation TwoViewController

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
    NSArray *textColor=@[
                         [NSDictionary dictionaryWithObject:[UIColor redColor] forKey:@"빨강"],
                         [NSDictionary dictionaryWithObject:[UIColor blueColor] forKey:@"파랑"],
                         [NSDictionary dictionaryWithObject:[UIColor blackColor] forKey:@"검정"],
                         [NSDictionary dictionaryWithObject:[UIColor magentaColor] forKey:@"분홍"],
                         [NSDictionary dictionaryWithObject:[UIColor orangeColor] forKey:@"초록"]
                         ];
    
    NSArray *backColor=@[
                         [NSDictionary dictionaryWithObject:[UIColor colorWithRed:1 green:1 blue:0.7 alpha:1] forKey:@"연한노랑"],
                         [NSDictionary dictionaryWithObject:[UIColor colorWithRed:1 green:0.8 blue:1 alpha:1] forKey:@"연한필크"],
                         [NSDictionary dictionaryWithObject:[UIColor colorWithRed:1 green:0.7 blue:1 alpha:1] forKey:@"연한하늘"],
                         [NSDictionary dictionaryWithObject:[UIColor colorWithRed:0.8 green:0.8 blue:0.8 alpha:1] forKey:@"연한회색"],
                         [NSDictionary dictionaryWithObject:[UIColor colorWithRed:1 green:1 blue:1 alpha:1] forKey:@"흰색"],
                         [NSDictionary dictionaryWithObject:[UIColor colorWithRed:1 green:0.7 blue:0 alpha:1] forKey:@"오렌지색"]
                         ];
    _colorArray=@[textColor,backColor];
    
    _picker.delegate=self;
    _picker.dataSource=self;
    
    
    
    _myLabel.textColor=[UIColor redColor];
    _myLabel.backgroundColor=[UIColor colorWithRed:1 green:1 blue:0.7 alpha:1];
    
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSArray *array=[_colorArray objectAtIndex:component];
    NSDictionary *dict=[array objectAtIndex:row];
    
    NSEnumerator *keyEnu=[dict keyEnumerator];
    NSString *key=[keyEnu nextObject];
    
    
    if(component == 0)//글자색
        _myLabel.textColor=[dict objectForKey:key];
    else //배경색
        _myLabel.backgroundColor=[dict objectForKey:key];
    
    
    
    
//    NSEnumerator *keyEnu=[dict objectForKey:key];
    
    
}





-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return [_colorArray count];
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [[_colorArray objectAtIndex:component] count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NSArray *array=[_colorArray objectAtIndex:component];
    NSDictionary *dict=[array objectAtIndex:row];
    
    NSEnumerator *keyEnu=[dict keyEnumerator];
    NSString *key=[keyEnu nextObject];
    return key;
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
