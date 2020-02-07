//
//  MainModuleAPI.m
//  GRMainTest
//
//  Created by 冉东军 on 2020/2/7.
//  Copyright © 2020 冉东军. All rights reserved.
//

#import "MainModuleAPI.h"
#import "GRTabBarController.h"
#import "GRNavBar.h"

@implementation MainModuleAPI

+ (GRTabBarController *)rootTabBarCcontroller {
    return [GRTabBarController shareInstance];
}

+ (void)addChildVC:(UIViewController *)vc title:(NSString *)title normalColor:(UIColor *)normalColor selectedColor:(UIColor *)selectedColor normalImageName:(NSString *)normalImageName selectedImageName:(NSString *)selectedImageName isRequiredNavController:(BOOL)isRequired
{
    [[GRTabBarController shareInstance] addChildVC:vc title:title normalColor:normalColor selectedColor:selectedColor normalImageName:normalImageName selectedImageName:selectedImageName isRequiredNavController:isRequired];
}

/**
 *  设置全局的导航栏背景图片
 *
 *  @param globalImg 全局导航栏背景图片
 */
+ (void)setNavBarGlobalBackGroundImage: (UIImage *)globalImg {
    [GRNavBar setGlobalBackGroundImage:globalImg];
}

/**
 *  设置全局导航栏标题颜色, 和文字大小
 *
 *  @param globalTextColor 全局导航栏标题颜色
 *  @param fontSize        全局导航栏文字大小
 */
+ (void)setNavBarGlobalTextColor: (UIColor *)globalTextColor andFontSize: (CGFloat)fontSize
{

    [GRNavBar setGlobalTextColor:globalTextColor andFontSize:fontSize];

}
@end
