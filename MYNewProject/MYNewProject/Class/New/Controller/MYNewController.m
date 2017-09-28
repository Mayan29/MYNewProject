//
//  MYNewController.m
//  MYNewProject
//
//  Created by mayan on 2017/3/7.
//  Copyright © 2017年 mayan. All rights reserved.
//

#import "MYNewController.h"
#import "UIBarButtonItem+Extension.h"

@interface MYNewController ()

@end

@implementation MYNewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"发新帖";
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem my_itemWithTarget:self action:@selector(back) image:@"back_btn_nor" higImage:@"back_btn_hig"];
    self.view.backgroundColor = [UIColor lightGrayColor];
}
- (void)back
{
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
