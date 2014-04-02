//
//  ThreeViewController.m
//  PickerEx1
//
//  Created by bongkwan on 2014. 4. 2..
//  Copyright (c) 2014년 저녁반. All rights reserved.
//

#import "ThreeViewController.h"

@interface ThreeViewController ()

@end

@implementation ThreeViewController

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
    
    _imageArray=[[NSMutableArray alloc]init];
    
    for(int i=1;i<=20;i++)
    {
        NSString *imgName=[NSString stringWithFormat:@"%d.JPG",i];
        UIImage *img=[UIImage imageNamed:imgName];
        
        [_imageArray addObject:img];
    }
    
    //피커뷰 생성
    _picker=[[UIPickerView alloc] initWithFrame:CGRectMake(10, 50, 200, 200)];
    _picker.backgroundColor=[UIColor colorWithRed:0.7 green:1 blue:1 alpha:1];
    _picker.delegate = self;
    _picker.dataSource = self;
    
    
    
    [self.view addSubview:_picker];
    
    //이미지뷰 생성
    _imgView=[[UIImageView alloc]initWithFrame:CGRectMake(30, 260, 200, 250)];
    _imgView.contentMode=UIViewContentModeScaleAspectFit;
    _imgView.image=[_imageArray objectAtIndex:0];
    [self.view addSubview:_imgView];

}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
//    NSArray *array=[_colorArray objectAtIndex:component];
//    NSDictionary *dict=[array objectAtIndex:row];
//    
//    NSEnumerator *keyEnu=[dict keyEnumerator];
//    NSString *key=[keyEnu nextObject];
    

    
    //    NSEnumerator *keyEnu=[dict objectForKey:key];
    
    
}





-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;//[_colorArray count];
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [_imageArray count];
}


-(CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    return 200;
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    _imgView.image=[_imageArray objectAtIndex:row];
}

-(UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    UIImageView *iView=[[UIImageView alloc]initWithFrame:CGRectMake(20, 0, 120, 180)];
    iView.image=[_imageArray objectAtIndex:row];
    return iView;
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
