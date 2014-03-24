//
//  ViewController.h
//  02CandleZoom
//
//  Created by bongkwan on 2014. 3. 24..
//  Copyright (c) 2014년 저녁반. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic,strong) UIImage *imgOn;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)buttonZom:(id)sender;

@end
