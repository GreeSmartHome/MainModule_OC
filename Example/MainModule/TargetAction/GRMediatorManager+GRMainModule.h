//
//  GRMediatorManager+GRMainModule.h
//  MainModule_Example
//
//  Created by 东哥 on 4/3/2020.
//  Copyright © 2020 1049646716@qq.com. All rights reserved.
//


#import "GRMediatorManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface GRMediatorManager (GRMainModule)

/**获取g跟控制器*/
+ (UIViewController *)rootTabBarController;

/**添加子控制器*/
+ (void)addChildVC:(UIViewController *)vc title:(NSString *)title normalColor:(UIColor *)normalColor selectedColor:(UIColor *)selectedColor normalImageName:(NSString *)normalImageName selectedImageName:(NSString *)selectedImageName isRequiredNavController:(BOOL)isRequired;

/**修改导航栏文字颜色*/
+ (void)setNavBarGlobalTextColor: (UIColor *)globalTextColor andFontSize: (CGFloat)fontSize;

@end

NS_ASSUME_NONNULL_END
