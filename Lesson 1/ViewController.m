//
//  ViewController.m
//  Lesson 1
//
//  Created by Prokofev Ruslan on 26.10.15.
//  Copyright © 2015 Prokofev Ruslan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)touchButton:(id)sender
{
    [self.label setText:[NSString stringWithFormat:@"%d",arc4random() % 100]];
}
@end
