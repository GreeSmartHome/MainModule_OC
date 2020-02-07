//
//  GRTabBarController.m
//  GRMainTest
//
//  Created by 冉东军 on 2020/2/7.
//  Copyright © 2020 冉东军. All rights reserved.
//

#import "GRTabBarController.h"
#import "GRNavigationController.h"
#import "GRTabBar.h"


@interface GRTabBarController ()

@end

@implementation GRTabBarController

+ (instancetype)shareInstance{
    
    static GRTabBarController *tabbarC;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        tabbarC = [[GRTabBarController alloc]init];
    });
    return tabbarC;
}

+ (instancetype)tabBarControllerWithAddChildVCsBlock:(void (^)(GRTabBarController * _Nonnull))addVCBlock{
    GRTabBarController *tabBarVC = [[GRTabBarController alloc]init];
    if (tabBarVC) {
        addVCBlock(tabBarVC);
    }
    return tabBarVC;
}

- (void)addChildVC: (UIViewController *)vc title:(NSString *)title normalColor:(UIColor *)normalColor selectedColor:(UIColor *)selectedColor normalImageName: (NSString *)normalImageName selectedImageName:(NSString *)selectedImageName isRequiredNavController: (BOOL)isRequired{
   
    if (isRequired) {
        GRNavigationController *nav = [[GRNavigationController alloc] initWithRootViewController:vc];
        nav.tabBarItem = [[UITabBarItem alloc] initWithTitle:title image:[[UIImage imageNamed:normalImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]  selectedImage:[[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
        [nav.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:normalColor} forState:UIControlStateNormal];
        [nav.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:selectedColor} forState:UIControlStateSelected];
        [self addChildViewController:nav];
    }else {
       vc.tabBarItem.title = title;
        [vc.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:normalColor} forState:UIControlStateNormal];
        [vc.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:selectedColor} forState:UIControlStateSelected];
       if (((normalImageName.length) && (selectedImageName.length)) > 0) { //图片存在
           vc.tabBarItem.image = [[UIImage imageNamed:normalImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
           vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
       }
        [self addChildViewController:vc];
    }
}

-(void)viewDidLoad {
    [super viewDidLoad];

    // 设置tabbar
    [self setUpTabbar];

    //为了放在外面自定义设置，暂时屏蔽，
    //iOS13碰到设置tabbar字体为选中状态颜色，正常切换没有问题，push后再返回，选中颜色变化系统蓝色 所以加这个
//    if (@available(iOS 13.0, *)) {
//        self.tabBar.tintColor = [UIColor blackColor];
//    }
    
    
}

- (void)setUpTabbar {
    [self setValue:[[GRTabBar alloc] init] forKey:@"tabBar"];
}

//+ (void)load{
//
//    UITabBarItem *item = [UITabBarItem appearance];
//
//    NSMutableDictionary *normalAttribute = [NSMutableDictionary dictionary];
//    normalAttribute[NSFontAttributeName] = [UIFont systemFontOfSize:10];
//    normalAttribute[NSForegroundColorAttributeName] = [UIColor blackColor];
//    [item setTitleTextAttributes:normalAttribute forState:UIControlStateNormal];
//
//    NSMutableDictionary *selectedAttribute = [NSMutableDictionary dictionary];
//    selectedAttribute[NSFontAttributeName] = [UIFont systemFontOfSize:10];
//    selectedAttribute[NSForegroundColorAttributeName] = [UIColor orangeColor];
//    [item setTitleTextAttributes:selectedAttribute forState:UIControlStateSelected];
//}

@end
