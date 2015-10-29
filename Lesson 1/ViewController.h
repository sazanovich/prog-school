//
//  ViewController.h
//  Lesson 1
//
//  Created by Prokofev Ruslan on 26.10.15.
//  Copyright © 2015 Prokofev Ruslan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)touchButton:(id)sender;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *button;
@end

