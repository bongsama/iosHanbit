//
//  ViewController.h
//  ImageEffectEx2
//
//  Created by 저녁반 on 2014. 3. 31..
//  Copyright (c) 2014년 저녁반. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    BOOL flag;
    BOOL flag1;
    BOOL flag2;
}
@property (nonatomic,strong) UIImageView *imgView;
@property (nonatomic,strong) UIImageView *imgView1;
@property (nonatomic,strong) UIImageView *imgView2;
- (IBAction)fade:(id)sender;
- (IBAction)shrink:(id)sender;
- (IBAction)flip:(id)sender;
- (IBAction)curl:(id)sender;

@end
