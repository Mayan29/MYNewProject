//
//  MYLaunchViewController.m
//  MYNewProject
//
//  Created by mayan on 2017/9/27.
//  Copyright © 2017年 mayan. All rights reserved.
//

#import "MYLaunchViewController.h"
#import "MYTabBarController.h"

@interface MYLaunchViewController ()

@end

@implementation MYLaunchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.size = CGSizeMake(100, 50);
    btn.center = CGPointMake(MYScreenW * 0.5, MYScreenH * 0.5);
    [btn setTitle:@"开始" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(start) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}
- (void)start
{
    [UIApplication sharedApplication].keyWindow.rootViewController = [[MYTabBarController alloc] init];
}


@end
