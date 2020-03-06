//
//  MainModuleAPI.h
//  GRMainTest
//
//  Created by 冉东军 on 2020/2/7.
//  Copyright © 2020 冉东军. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MainModuleAPI : NSObject

/**
 获取根控制器

 @return rootTabBarCcontroller
 */
+ (UITabBarController *)rootTabBarCcontroller;

/**
 添加子控制器

 @param vc                子控制器
 @param title   item标题
 @param normalColor   普通状态字体颜色
 @param selectedColor   选中状态下字体颜色
 @param normalImageName   普通状态下图片
 @param selectedImageName 选中图片
 @param isRequired        是否需要包装导航控制器
 */
+ (void)addChildVC: (UIViewController *)vc title:(NSString *)title normalColor:(UIColor *)normalColor selectedColor:(UIColor *)selectedColor normalImageName: (NSString *)normalImageName selectedImageName:(NSString *)selectedImageName isRequiredNavController: (BOOL)isRequired;

+ (void)addChildVC:(NSArray *)param;

/**
 *  设置全局的导航栏背景图片
 *
 *  @param globalImg 全局导航栏背景图片
 */
+ (void)setNavBarGlobalBackGroundImage: (UIImage *)globalImg;

/**
 *  设置全局导航栏标题颜色, 和文字大小
 *
 *  @param globalTextColor 全局导航栏标题颜色
 *  @param fontSize        全局导航栏文字大小
 */
+ (void)setNavBarGlobalTextColor: (UIColor *)globalTextColor andFontSize: (CGFloat)fontSize;
@end

NS_ASSUME_NONNULL_END
