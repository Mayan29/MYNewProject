//
//  MYTabBar.m
//  MYNewProject
//
//  Created by mayan on 2017/3/7.
//  Copyright © 2017年 mayan. All rights reserved.
//

#import "MYTabBar.h"

@interface MYTabBar ()

@property (nonatomic, strong) UIButton *plusBtn;

@end

@implementation MYTabBar


- (instancetype)init
{
    self = [super init];
    if (self) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setBackgroundImage:[UIImage imageNamed:@"tab_btnBg_nor"] forState:UIControlStateNormal];
        [btn setBackgroundImage:[UIImage imageNamed:@"tab_btnBg_high"] forState:UIControlStateHighlighted];
        [btn setImage:[UIImage imageNamed:@"tab_add_nor"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"tab_add_high"] forState:UIControlStateHighlighted];
        [btn addTarget:self action:@selector(plusClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btn];
        
        self.plusBtn = btn;
    }
    return self;
}
- (void)plusClick
{
    if (self.pushBlock) {
        self.pushBlock();
    }
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.plusBtn.size = self.plusBtn.currentBackgroundImage.size;
    self.plusBtn.centerX = self.width * 0.5;
    self.plusBtn.centerY = self.height * 0.5;
    
    NSInteger i = 0;
    CGFloat viewW = MYScreenW / 5;
    for (UIView *view in self.subviews) {
        
        if (![view isKindOfClass:NSClassFromString(@"UITabBarButton")]) continue;
        
        view.width = viewW;
        view.left = (i > 1) ? (viewW * (i + 1)) : (viewW * i);
        
        i++;
    }
}


@end
