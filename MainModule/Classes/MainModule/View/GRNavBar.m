//
//  GRNavBar.m
//  GRMainTest
//
//  Created by 冉东军 on 2020/2/7.
//  Copyright © 2020 冉东军. All rights reserved.
//

#import "GRNavBar.h"
#import "GRNavigationController.h"

@implementation GRNavBar

/**
 *  设置全局的导航栏背景图片
 *
 *  @param globalImg 全局导航栏背景图片
 */
+ (void)setGlobalBackGroundImage: (UIImage *)globalImg {

    if (@available(iOS 9.0, *)) {
        UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[[GRNavigationController class]]];
        [navBar setBackgroundImage:globalImg forBarMetrics:UIBarMetricsDefault];
    } else {
        // Fallback on earlier versions
        UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedIn:NSClassFromString(@"GRNavigationController"), nil];
        [navBar setBackgroundImage:globalImg forBarMetrics:UIBarMetricsDefault];
    }

}

/**
 *  设置全局导航栏标题颜色
 *
 *  @param globalTextColor 全局导航栏标题颜色
 */
+ (void)setGlobalTextColor: (UIColor *)globalTextColor andFontSize: (CGFloat)fontSize  {

    if (globalTextColor == nil) {
        return;
    }
    if (fontSize < 6 || fontSize > 40) {
        fontSize = 16;
    }
    UINavigationBar *navBar;
    if (@available(iOS 9.0, *)) {
        navBar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[[GRNavigationController class]]];
    } else {
        // Fallback on earlier versions
        navBar = [UINavigationBar appearanceWhenContainedIn:NSClassFromString(@"GRNavigationController"), nil];
    }
    // 设置导航栏颜色
    NSDictionary *titleDic = @{
                               NSForegroundColorAttributeName: globalTextColor,
                               NSFontAttributeName: [UIFont systemFontOfSize:fontSize]
                               };
    [navBar setTitleTextAttributes:titleDic];
}
@end
