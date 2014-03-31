//
//  ViewController.h
//  ImageEffectEx2
//
//  Created by bongkwan on 2014. 3. 31..
//  Copyright (c) 2014년 저녁반. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    BOOL flag;
}

@property (nonatomic,strong) UIImageView *imgView;

- (IBAction)fade:(id)sender;
- (IBAction)shrink:(id)sender;
- (IBAction)flip:(id)sender;
- (IBAction)curl:(id)sender;

@end
