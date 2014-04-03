//
//  ViewController.h
//  ImageAniEx1
//
//  Created by 저녁반 on 2014. 4. 3..
//  Copyright (c) 2014년 저녁반. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSInteger index;
    CGFloat speed;
}
@property (nonatomic,strong) NSMutableArray *imageArray;
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UILabel *lblCount;
@property (weak, nonatomic) IBOutlet UIButton *prev;
@property (weak, nonatomic) IBOutlet UIButton *next;

- (IBAction)changeSpeed:(id)sender;
- (IBAction)buttonPrev:(id)sender;
- (IBAction)buttonStart:(id)sender;
- (IBAction)buttonNext:(id)sender;
@end









