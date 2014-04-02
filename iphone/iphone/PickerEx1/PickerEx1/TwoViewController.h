//
//  TwoViewController.h
//  PickerEx1
//
//  Created by bongkwan on 2014. 4. 2..
//  Copyright (c) 2014년 저녁반. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TwoViewController : UIViewController
<UIPickerViewDelegate, UIPickerViewDataSource>


@property (nonatomic, strong) NSArray *colorArray;
@property (strong, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) IBOutlet UILabel *myLabel;

@end
