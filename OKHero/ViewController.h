//
//  ViewController.h
//  OKHero
//
//  Created by Mobilike on 28.08.2014.
//  Copyright (c) 2014 mobilike. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *myButton;
@property (weak, nonatomic) IBOutlet UIView *myBall;

- (IBAction)myButtonAction:(id)sender;
@end
