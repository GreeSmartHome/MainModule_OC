//
//  GRAppDelegate.m
//  MainModule
//
//  Created by 1049646716@qq.com on 02/07/2020.
//  Copyright (c) 2020 1049646716@qq.com. All rights reserved.
//

#import "GRAppDelegate.h"
#import <MainModuleAPI.h>

@implementation GRAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    UITabBarController *rootVC = [MainModuleAPI rootTabBarCcontroller];
    [MainModuleAPI addChildVC:[UIViewController new] title:@"家居" normalColor:[UIColor blackColor] selectedColor:[UIColor redColor] normalImageName:@"control_tab_black_normal" selectedImageName:@"control_tab_selected" isRequiredNavController:YES];
    [MainModuleAPI addChildVC:[UIViewController new] title:@"商城" normalColor:[UIColor blackColor] selectedColor:[UIColor redColor] normalImageName:@"mall_tab_black_normal" selectedImageName:@"mall_tab_selected" isRequiredNavController:YES];
    [MainModuleAPI addChildVC:[UIViewController new] title:@"发现" normalColor:[UIColor blackColor] selectedColor:[UIColor redColor] normalImageName:@"find_tab_black_normal" selectedImageName:@"find_tab_selected" isRequiredNavController:YES];
    [MainModuleAPI addChildVC:[UIViewController new] title:@"我的" normalColor:[UIColor blackColor] selectedColor:[UIColor redColor] normalImageName:@"my_tab_black_normal" selectedImageName:@"my_tab_selected" isRequiredNavController:YES];
    self.window.rootViewController = rootVC;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
