//
//  GRMediatorManager+GRMainModule.m
//  MainModule_Example
//
//  Created by 东哥 on 4/3/2020.
//  Copyright © 2020 1049646716@qq.com. All rights reserved.
//

#import "GRMediatorManager+GRMainModule.h"


@implementation GRMediatorManager (GRMainModule)

+ (UIViewController *)rootTabBarController{
    
   UIViewController *rootVC = [self performTarget:@"MainModuleAPI" action:@"rootTabBarCcontroller" params:nil isRequiredReturnValue:YES];
    if (rootVC == nil) {
        return [UIViewController new];
    }
    return rootVC;
}

+ (void)addChildVC:(UIViewController *)vc title:(NSString *)title normalColor:(UIColor *)normalColor selectedColor:(UIColor *)selectedColor normalImageName:(NSString *)normalImageName selectedImageName:(NSString *)selectedImageName isRequiredNavController:(BOOL)isRequired {
    
    NSArray *param = @[vc, title, normalColor,selectedColor,normalImageName,selectedImageName, @(isRequired)];
    [self performTarget:@"MainModuleAPI" action:@"addChildVC:" params:param isRequiredReturnValue:NO];
    
}


@end
