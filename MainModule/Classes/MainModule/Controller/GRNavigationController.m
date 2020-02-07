//
//  GRNavigationController.m
//  GRMainTest
//
//  Created by 冉东军 on 2020/2/7.
//  Copyright © 2020 冉东军. All rights reserved.
//

#import "GRNavigationController.h"
#import "GRNavBar.h"
@interface GRNavigationController ()<UIGestureRecognizerDelegate>

@end

@implementation GRNavigationController

-(instancetype)initWithRootViewController:(UIViewController *)rootViewController {
    if (self = [super initWithRootViewController:rootViewController]) {
        [self setValue:[[GRNavBar alloc] init] forKey:@"navigationBar"];
    }
    return self;
}

-(void)viewDidLoad {
    [super viewDidLoad];

    // 设置手势代理
    UIGestureRecognizer *gester = self.interactivePopGestureRecognizer;
//    gester.delegate = self;

    // 自定义手势
    // 手势加在谁身上, 手势执行谁的什么方法
    UIPanGestureRecognizer *panGester = [[UIPanGestureRecognizer alloc] initWithTarget:gester.delegate action:NSSelectorFromString(@"handleNavigationTransition:")];
    // 其实就是控制器的容器视图
    [gester.view addGestureRecognizer:panGester];

    gester.delaysTouchesBegan = YES;
    panGester.delegate = self;


}

/**
 *  当控制器, 拿到导航控制器(需要是这个子类), 进行压栈时, 都会调用这个方法
 *
 *  @param viewController 要压栈的控制器
 *  @param animated       动画
 */
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {

    // 拦截每一个push的控制器, 进行统一设置
    // 过滤第一个根控制器
    if (self.childViewControllers.count > 0) {
        
        //统一设置返回按钮
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"btn_back_n"] style:0 target:self action:@selector(back)];
        //非根控制器隐藏TabBar
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
    // 千万不要忘记写
    [super pushViewController:viewController animated:animated];

}
/**
返回&出栈
*/
- (void)back {

    [self.view endEditing:YES];
    if (@available(iOS 13.0, *)) {
        [[UIApplication sharedApplication].windows[0] endEditing:YES];
    }else{
        [[UIApplication sharedApplication].keyWindow endEditing:YES];
    }
    [self popViewControllerAnimated:YES];
  
}

#pragma mark - UIGestureRecognizerDelegate

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {

    // 如果根控制器也要返回手势有效, 就会造成假死状态
    // 所以, 需要过滤根控制器
    if(self.childViewControllers.count == 1) {
        return NO;
    }

    return YES;

}


@end
