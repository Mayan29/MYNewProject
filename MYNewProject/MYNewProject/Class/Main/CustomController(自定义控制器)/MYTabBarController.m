//
//  MYTabBarController.m
//  MYNewProject
//
//  Created by mayan on 2017/3/7.
//  Copyright © 2017年 mayan. All rights reserved.
//

#import "MYTabBarController.h"
#import "MYTabBar.h"
#import "MYNavigationController.h"

#import "MYOneController.h"
#import "MYTwoController.h"
#import "MYThreeController.h"
#import "MYFourController.h"
#import "MYNewController.h"

@interface MYTabBarController ()

@end

@implementation MYTabBarController


+ (void)initialize
{
    
    // 如果使用appearance,调用发短信,会修改系统的导航条,导致选取联系人按钮消失
    UITabBarItem *item = [UITabBarItem appearanceWhenContainedIn:self, nil];
    
    NSDictionary *norAttr = @{
                              NSFontAttributeName : SYS_FONT(12),
                              NSForegroundColorAttributeName : MYColor(120, 120, 120)
                              };
    NSDictionary *selAttr = @{
                              NSFontAttributeName : SYS_FONT(12),
                              NSForegroundColorAttributeName : [UIColor orangeColor]
                              };
    [item setTitleTextAttributes:norAttr forState:UIControlStateNormal];
    [item setTitleTextAttributes:selAttr forState:UIControlStateSelected];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MYOneController *vc_1 = [[MYOneController alloc] init];
    [self addChildVC:vc_1 title:@"电影" image:@"tab_one_nor" selImage:@"tab_one_sel"];
    
    MYTwoController *vc_2 = [[MYTwoController alloc] init];
    [self addChildVC:vc_2 title:@"卖品" image:@"tab_two_nor" selImage:@"tab_two_sel"];
    
    MYThreeController *vc_3 = [[MYThreeController alloc] init];
    [self addChildVC:vc_3 title:@"活动" image:@"tab_three_nor" selImage:@"tab_three_sel"];
    
    MYFourController *vc_4 = [[MYFourController alloc] init];
    [self addChildVC:vc_4 title:@"我" image:@"tab_four_nor" selImage:@"tab_four_sel"];
    
    MYTabBar *tabBar = [[MYTabBar alloc] init];
    tabBar.pushBlock = ^{
        
        MYNavigationController *nvc = [[MYNavigationController alloc] initWithRootViewController:[[MYNewController alloc] init]];
        [self presentViewController:nvc animated:YES completion:nil];
    };
    [self setValue:tabBar forKey:@"tabBar"];
}

- (void)addChildVC:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selImage:(NSString *)selImage
{
    vc.title = title;
    vc.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:selImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    MYNavigationController *nvc = [[MYNavigationController alloc] initWithRootViewController:vc];
    [self addChildViewController:nvc];
}


@end
