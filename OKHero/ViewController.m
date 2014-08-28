//
//  ViewController.m
//  OKHero
//
//  Created by Mobilike on 28.08.2014.
//  Copyright (c) 2014 mobilike. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property NSMutableArray * myArray;
@property int selector;
@end

@implementation ViewController
@synthesize selector,myArray;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.myBall.layer.cornerRadius = 50;
    myArray = [NSMutableArray arrayWithObjects:@"Shake",@"Run", nil];
    [self.myButton.titleLabel setText:@"Shake"];
    selector =1;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)buttonText
{
    NSString * text;
    switch (selector)
    {
        case 0:
            text = @"Shake";
            selector++;
            break;
        case 1:
            text = @"Run";
            selector++;
            break;
        default:
            selector = 0;
            text = @"Shake";
            break;
    }
    
    [self.myButton setTitle:text forState:UIControlStateNormal];
    
}
- (IBAction)myButtonAction:(id)sender
{
    [self animationThisView:self.myBall];
    
    [self buttonText];
    
}

- (void)animationThisView :(UIView *)view
{
    NSString * text = self.myButton.titleLabel.text;
    
    if ([text isEqualToString:@"Shake"])
    {
        [UIView animateWithDuration:0.7 animations:^{
            CGRect frame = view.frame;
            frame.origin.x = frame.origin.x-50;
            view.frame = frame;
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.7 animations:^{
                CGRect frame = view.frame;
                frame.origin.x = frame.origin.x+100;
                view.frame = frame;
            } completion:^(BOOL finished) {
                [UIView animateWithDuration:0.7 animations:^{
                    CGRect frame = view.frame;
                    frame.origin.x = frame.origin.x-50;
                    view.frame = frame;
                } completion:^(BOOL finished) {
                    
                }];
                
            }];
        }];
    }
    
    if ([text isEqualToString:@"Run"])
    {
        [UIView animateWithDuration:0.8 animations:^{
            CGRect frame = view.frame;
            frame.origin.x = frame.origin.x-160;
            view.frame = frame;
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.8 animations:^{
                CGRect frame = view.frame;
                frame.origin.x = frame.origin.x+160;
                view.frame = frame;
            } completion:^(BOOL finished) {
                
            }];
        }];
    }
}














@end
