//
//  GRTabBarController.h
//  GRMainTest
//
//  Created by 冉东军 on 2020/2/7.
//  Copyright © 2020 冉东军. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GRTabBarController : UITabBarController

/**
 获取单例对象

 @return TabBarController
 */
+ (instancetype)shareInstance;


/**
 添加子控制器的block

 @param addVCBlock 添加代码块

 @return TabBarController
 */
+ (instancetype)tabBarControllerWithAddChildVCsBlock: (void(^)(GRTabBarController *tabBarC))addVCBlock;

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
- (void)addChildVC: (UIViewController *)vc title:(NSString *)title normalColor:(UIColor *)normalColor selectedColor:(UIColor *)selectedColor normalImageName: (NSString *)normalImageName selectedImageName:(NSString *)selectedImageName isRequiredNavController: (BOOL)isRequired;
@end

NS_ASSUME_NONNULL_END
