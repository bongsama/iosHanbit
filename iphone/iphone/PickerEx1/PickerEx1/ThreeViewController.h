//
//  ThreeViewController.h
//  PickerEx1
//
//  Created by bongkwan on 2014. 4. 2..
//  Copyright (c) 2014년 저녁반. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThreeViewController : UIViewController
<UIPickerViewDelegate,UIPickerViewDataSource>

@property (nonatomic,strong) UIPickerView *picker;
@property (nonatomic,strong) UIImageView *imgView;
@property (nonatomic,strong) NSMutableArray *imageArray;

@end
